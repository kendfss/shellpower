import argparse, os, sys, re, subprocess, time, winsound
from typing import Any, Iterable

def beeper(inpt:int,duration:int=500) -> None:
    for i in range(inpt):
        frequency = 65*2**(i)
        winsound.Beep(frequency,duration)

def show(array:Iterable[Any], indentation:int=0, enum:bool=False, start:int=1, indentor:str='\t', tail=True, head=False, file=sys.stdout) -> None: 
    """
    Print each element of an array. This will consume a generator.
    """
    if (wasstr:=isinstance(file,str)): file = open(file)
    print('\n',file=file) if head else None
    for i,j in enumerate(array):
        print(
            (
                f"{indentation*indentor}{j}",
                f"{indentation*indentor}{i+start}\t{j}"
            )[enum],
            sep='',
            file=file
        )
    print('\n',file=file) if tail else None
    if wasstr: file.close()

def name_dodger(path:str,sep:str='_') -> str:
    """
    Returns a unique version of a given string by appending an integer
    """
    import os
    id = 2
    oldPath = path[:]
    while os.path.exists(path):
        newPath = list(os.path.splitext(path))
        if sep in newPath[0]:
            if newPath[0].split(sep)[-1].isnumeric():
                # print('case1a')
                id = newPath[0].split(sep)[-1]
                newPath[0] = newPath[0].replace(f'{sep}{id}', f'{sep}{str(int(id)+1)}')
                path = ''.join(newPath)
            else:
                # print('case1b')
                newPath[0] += f'{sep}{id}'
                path = ''.join(newPath)
                id += 1
        else:
            # print('case2')
            newPath[0] += f'{sep}{id}'
            path = ''.join(newPath)
            id += 1
    return path

def build_command(compiler:str,file:str,newfile:str,icon:str,upx:str,folder:str) -> str:
    if compiler == 'pyinstaller':
        cmd = 'pyinstaller --onefile --clean'
        cmd += f' --noupx' if not upx else ''
        cmd += f' -p "{folder}"' if folder else ''
        cmd += f' -i "{icon}"' if icon else ''
        cmd += f' -n "{newfile}"'
        cmd += f' "{file}"'
    elif compiler in 'gcc g++'.split():
        cmd = f'{compiler}'
        cmd += f' -B "{folder}"' if folder else ''
        cmd += f' "{file}" -o "{newfile}"'
    return cmd
def extension_from_platform() -> str:
    extensions = {
        'linux': '.out', 
        'win32': '.exe', 
        'aix': '.out', 
        'cygwin': '.out', 
        'darwin': '.app', 
    }
    return extensions[sys.platform]

def compiler_from_extension(ext:str) -> str:
    compilers = {
        '.py': 'pyinstaller',
        '.c': 'gcc',
        '.cpp': 'g++',
        '': '',
    }
    compiler = next(i for i in compilers if re.search(f'{re.escape(ext)}$',i))
    return compilers[compiler]
    
def find_file(script:str) -> str:
    source, namext = os.path.split(script)
    name, ext = os.path.splitext(namext)
    source = os.getcwd() if not source else source
    if not ext:
        options = [f for f in os.listdir(source) if re.match(script,f,re.I)]
        if len(options)==1:
            file = os.path.join(source,options[0])
        else:
            print(f'Please choose an option [1,...,{len(options)}]:')
            show(options,1,True)
            choice = int(input('\t'))
            file = os.path.join(source,options[choice-1])
        ext = os.path.splitext(file)[1]
    else:
        file = os.path.join(source,namext)
        if not os.path.exists(file):
            raise FileNotFoundError(f'"{namext}" does not exist')
    return file

def parse_path(path:str) -> tuple:
    source, namext = os.path.split(path)
    name, ext = os.path.splitext(namext)
    return source, namext, name, ext

def parse_boolean(boolean:str) -> bool:
    negatives = '0 f n no'.split()
    positives = '1 t y yes'.split()
    if not any(isinstance(boolean,i) for i in (str,bool)):
        raise ValueError(f'"{boolean}" is not a viable boolean')
    elif isinstance(boolean,str):
        if not any(boolean in i for i in (positives,negatives)):
            raise ValueError(f'"{boolean}" is not a viable boolean')
        elif boolean.lower() in negatives:
            boolean = 'false'
        elif boolean.lower() in positives:
            boolean = 'true'
        boolean = eval(boolean.title())
    return bool(boolean)


desc = 'Compile a script. Extension defaults to ".cpp" if no extension is given with the script name.'
parser = argparse.ArgumentParser(description=desc,prog='myprogram')
parser.add_argument("script", help="Name of the script you would like to compile",type=str)
parser.add_argument('-c','--compiler',default=None,type=str)
parser.add_argument('-d','--destination',default=None,type=str,help='Say "pwd" or "cwd" for the current directory. Defaults to the original directory if unspecified.')
parser.add_argument('-f','--folder',default=None,type=str,help='Add a directory to the compiler\'s search path.')
parser.add_argument('-o','--overwrite',default=True,action="store_false",help='Overwrite if the file already exists?')
parser.add_argument('-s','--show',default=False,action="store_true",help='Open the directory on completion?')
parser.add_argument('-q','--quiet',default=(sys.platform!='win32'),action="store_true",help='Mute the beep? (windows only)')
parser.add_argument('-n','--name',default=None,type=str,help='Name of the compiled file.')
parser.add_argument('-x','--extension',default=None,type=str,help='Extension of the compiled file.')
parser.add_argument('-i','--icon',default=None,type=str,help='Path to a ".ico" you would like to use? (python only)')
parser.add_argument('--upx',default=False,action='store_true',help='Would you like to compress the out-file? (python only)')

if __name__ == '__main__':
    t = time.perf_counter()
    args = parser.parse_args()
    
    file = find_file(args.script)
    source, namext, name, ext = parse_path(file)

    compiler = args.compiler if args.compiler else compiler_from_extension(ext)
    icon = args.icon
    upx = args.upx
    folder = args.folder

    destination = args.destination if args.destination else source
    newname = args.name if args.name else name
    newextension = args.extension if args.extension else extension_from_platform()
    
    newpath = os.path.join(destination,newname+newextension)
    newfile = name_dodger(newpath) if args.overwrite else newpath
    
    cmd = build_command(compiler,file,newfile,icon,upx,folder)
    print(cmd)
    subprocess.run(cmd)

    print(f'Complete\n\t{round(time.perf_counter()-t,2)} s\n')
    if args.show:
        os.startfile(destination)
    if not args.quiet:
        beeper(7)