# ShellPower
<!-- <center><h1>ShellPower</h1></center> -->

_**what**_  
A collection of powershell scripts to help aid and play flows

[_**how**_](#usage)  

_**why**_  
*Stubby little fingers grow weary of tired analogies*

### Usage
This repository holds PowerShell scripts that I created for personal convenience.  
Add them to a directory that is on your Path environment variable for optimal use.  

You *__will__* have to personalize:  
- [tilde](#tilde)  
- [clone](#clone)  
- [mdn](#mdn)  
- [npp](#npp)  
- [splee2](#splee2)  
- [splee4](#splee4)  
- [splee5](#splee5)  
- [sublime_docs](#sublime_docs)  

You *__may__* have to personalize:  
- [foo](#foo)  
- [gosite](#gosite)  
- [gosrc](#gosrc)  

You *__should__* personalize:  
- [happy_birthday](#happy_birthday)  
- [play](#play)  

The three "splee" scripts enable the user to use Deezer's Spleeter CLI in a batched mode.  
The number corresponds to the number of audio tracks the corresponding model is capable of parsing from a single source.  

##### alert
Produce a sequence of n beeps with random frequency
```powershell
> alert 3
```
- *Requires:* [play](#play)  

##### bar
Echo a line of text comprised by a repetition of your chosen string
```powershell
> bar 3
***
> bar qwerty 3
qwertyqwertyqwerty
```

##### blank
Echo n blank lines
```powershell
> blank 3



```

##### ccd
copy current directory to clibpoard
```powershell
> ccd
```
- *See Also:* [pcd](#pcd)  

##### cdls
CD to and run LS in consecutive directories
```powershell
> cdls folder1 ../folder2 folder3 
```
Is equal to
```powershell
> cd folder1; ls; cd ..; cd folder2; ls; cd folder3; ls
```
- *See Also:* [cdn](#cdn)  
- *See Also:* [cls](#cls)  
- *See Also:* [dls](#dls)  

##### cdn
Same as [cdls](#cdls) except it only prints the names of the directory contents as opposed to default windows behaviour (which is the same as ls -l on unix)
```powershell
> cdn folder1 ../folder2 folder3 
```
- *See Also:* [names](#names)  

##### clone
Open your git cloning manager
```powershell
> clone 
```

##### close
Close a running process
```powershell
> close fl64 
# closes fl64.exe
```

##### cls
Clears the screen before implementing [cdls](#cdls) and returning to starting directory
```powershell
> cls folder1 ../folder2 folder3 
# closes fl64.exe
```
- *See Also:* [cdls](#cdls)  
- *See Also:* [dls](#dls) 

##### dls
Clears the screen before implementing [cdls](#cdls)
```powershell
> cls folder1 ../folder2 folder3 
# closes fl64.exe
```
- *See Also:* [cdls](#cdls)  
- *See Also:* [cls](#cls) 

##### download
Download a file from the internet
```powershell
> download source.url destination/file.path
```
- *Wrapper on **invoke-webrequest***  




##### exec
Execute a sequence of commands in succession
```powershell
> exec "command 1" ... "command n"
```
- *Wrapper on **invoke-expression***


##### ext
Scan a sequence of directories for files with a given extension
```powershell
> ext "extension" "directory 1" ... "directory n"
```


##### ffhere
Play files in tne current directory with [ffmpeg]()'s [ffplay]() program
```powershell
> ffhere
# will play the 1st 2nd and 3rd files listed in an "ls" call
> ffhere
# will play everything in the current directory
```


##### foo
Open foobar2000
```powershell
> foo
```
- *Assumes:* it is installed at *"C:\Program Files (x86)\foobar2000"*  


##### gosite
cd into ```$env:gopath```  
```powershell
> gosite
```
- *Assumes:* [Golang]() has been installed  


##### gosrc
cd into the directory above thee
```powershell
> gosrc
```
- *Assumes:* [Golang]() has been installed and its */bin* directory is on the *path* variable


##### goto
Open the directory containing a given executable which is accessible via the *path* environment variable. Also echoes the path of the executable
```powershell
> goto powershell
C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe
```


##### happy_birthday
Play happy birthday with lyrics  
```powershell
> happy_birthday syllable1 syllable2
# prints the lyrics, while playing the melody, puts the two arguments (syllables) into "happy birthday, dear {syllable1} {syllable2}" t
```
- *Requires:* [play](#play)  


##### ind
Echo the index of an element of a countable iterable
```powershell
> ind 1 3
1 of 3
```


##### isdir
Check if a path is a directory in the file system
```powershell
> isdir path/in/question
```


##### isfile
Check if a path is a file in the file system
```powershell
> isfile path/in/question
```


##### isit
Return the boolean values associated with arguments
```powershell
> isit arg1 arg2 ... argN
```
- Wraps *get-command* 


##### mcd
Create a whole tree with a single command
```powershell
> mcd folder1 ../folder2 folder3
# equals md folder1; cd folder1; cd ..; md folder2; cd folder2; md folder3; cd folder3 
> mcd testdir1 td2 ../td3 td4
# testdir1
# ├───td2
# └───td3
#     └───td4
```


##### mdn
Opens the mozilla mdn docs in explorer
```powershell
> mdn
```


##### names
run `ls -n` aka `get-childitem -n`
```powershell
> names
```


##### nameSpacer
Check if a given path exists and return a version of it that does not
```powershell
> nameSpacer c:/users
c:/users_2
```


##### new
Create a new powershell script  
```powershell
> new
```


##### np
open in notepad  
```powershell
> np
```


##### npp
open in notepad++  
```powershell
> npp
```
- Assumes you have an alias for notepad++ as "n++" in your path or $profile  


##### onde
Find out precisely where executables on the path are located
```powershell
> onde exe1 exe2 etc..
```
- *Note:* You will have to append '.ps1' if you are specifically looking for powershell scripts  






##### pcd
cd into the directory in your clipboard
```powershell
> pcd
```


##### play
Play a sequence of notes on a single 11-note octave "keyboard" rooted at 440hz
```powershell
> play 0 1 1 2 3 5 8 13 21
```


##### pop
open something with explorer and focus its window.  
"start-process"/"start"/etc don't focus the new window in Windows Terminal  
```powershell
> pop
```


##### pout
Repetitive echo that was probably the first powershell script i wrote. I forgot about, and would otherwise delete, it but reading it now I realize I'd also forgotten some syntax features I should remember to implement elsewhere in this library. So it's sticking around, for now.  
```powershell
> pout
```


##### pow
Raise some argument to a power of choice
```powershell
> pow 2 3
8
```


##### profile
Open your `$profile` file
```powershell
> profile
```


##### pub
Pub get a sequence of arguments
```powershell
> pub uri1 uri2 #etc...
```
- Assumes you have installed flutter/dart installed  

##### pushenv
Set augment an environment variable
```powershell
> environ "key" "value" "separator"
> environ "key" "value" 
```
- **Not** persistent  
- **Remember** to use a separator if needed  

##### putenv
Set an environment variable
```powershell
> environ "variable" "value"
```
- **Not** persistent  


##### readus
Cat the readme.md files of multiple directories by simply stating the folder names  
```powershell
> cd my/repository/depository
> readus tensorflow python some/other/repo/or/folder/maybe/its/on/another/disk/or/something/you/decide
```


##### recycle
Send path to the recycle bin
```powershell
> recycle
```
- Currently broken  


##### scrap
Rage quit your project by sending it to the recycle bin  
```powershell
> scrap
```
- Requires recycle


##### sound
Open the sound control panel
```powershell
> sound
```


##### splee2
Split an audio stream into a vocal and instrumental track
```powershell
> splee2
```
- Assumes you have python and have previously installed [spleeter](https://github.com/deezer/spleeter)

##### splee4
Split an audio stream into a vocal, instrumental, drum, bass, and piano tracks
```powershell
> splee4
```
- Assumes you have python and have previously installed [spleeter](https://github.com/deezer/spleeter)


##### splee5
Split an audio stream into a vocal, instrumental, drum, bass, and piano tracks
```powershell
> splee5
```
- Assumes you have python and have previously installed [spleeter](https://github.com/deezer/spleeter)


##### splitext
Split the last suffix from the path
```powershell
> splitext path/to/something.suffix1.suffix2
suffix2
```


##### sublime_docs
Serve the unofficial Sublime Text documentation locally
```powershell
> sublime_docs
```


##### tilde
ssh into tilde
```powershell
> tilde
```


##### unix
Convert a path to wsl-unix form and sends it to the clip-board
```powershell
> unix
```


##### yda
Youtube download the audio streams associated with a sequence of arguments
```powershell
> yda
```
- Assumes you have installed [youtube-dl](https://github.com/ytdl-org/youtube-dl)


##### ydl
Youtube download the audio streams associated with a sequence of arguments
```powershell
> ydl
```
- Assumes you have installed [youtube-dl](https://github.com/ytdl-org/youtube-dl)
 

