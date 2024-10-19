# ShellPower

_**what**_  
A collection of powershell scripts to help aid and play flows  

[_**how**_](#usage)  

_**why**_  
*Stubby little fingers grow weary of repeaded command sequences*

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
- [st](#st)  
- [new](#new)  
- [profile](#profile)  
- [ytdls](#ytdls)  

- [gitfast](#gitfast)  

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

##### basename
offers the same functionality as the eponymous bash command
```powershell
> (basename "c:/program files") -eq "program files"
True
```

##### blank
Echo n blank lines  
```powershell
> blank 3



```
- *See Also:* [goc](#goc)  

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

##### choose
Same as [cpr](#cpr) except it accepts arguments manually  
```powershell
> choose (exts mkv webm mp4)
```
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
- *See Also:* [names](#names)  

##### cpr
Copy the name of a random item in the current directory to the clipboard  
```powershell
> cpr
```
- *See Also:* [names](#names)  

##### deploy
a set up script for installing the `.profile`
```powershell
> deploy
```

##### dls
Clears the screen before implementing [cdls](#cdls)  
```powershell
> cls folder1 ../folder2 folder3 
# closes fl64.exe
```
- *See Also:* [cdls](#cdls)  
- *See Also:* [cls](#cls)  
- *See Also:* [names](#names)  

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
Scan the current directory for files matching given extensions  
```powershell
> ext "extension 1" "extension 2" ... "extension n"
```
- *See Also:* [next](#next)  


##### ffhere
Play files in tne current directory with [ffmpeg](https://ffmpeg.org/ffmpeg.html)'s [ffplay](https://ffmpeg.org/ffplay.html) program  
```powershell
> ffhere 1 2 3
# will play the 1st 2nd and 3rd files listed in an "ls" call
> ffhere
# will play everything in the current directory
```

##### ffp
[FFPlay](https://ffmpeg.org/ffplay.html) files from the clipbboard or passed as argument  
```powershell
> ffp
# get clipboard, split by line break, play each file
> ffp (names | grep -i "search criteria")
# will play every file in the current directory whose name matches "search criteria"
```

##### files
Echo the names of the files in an `get-childitem -file -names` call of each argument (assuming it is a path to a directory)  
```powershell
> files dir1 dir2 dir3
# will look in the 1st 2nd and 3rd directories passed as arguments
> files
# will look in the current directory
```

##### folders
Echo the names of the folders in an `get-childitem -directory -names` call of each argument (assuming it is a path to a directory)  
```powershell
> folders dir1 dir2 dir3
# will look in the 1st 2nd and 3rd directories passed as arguments
> folders
# will look in the current directory
```



##### foo
Open foobar2000  
```powershell
> foo
```
- *Assumes:* it is installed at *"C:\Program Files (x86)\foobar2000"*  


##### goc
Go doc any number of arguments  
```powershell
> goc image.decode os.executable io/fs
```
- *Assumes:* [Golang](https://golang.org) has been installed  
- *See Also:* [blank](#blank)  


##### gitfast
Quickly init, commit, and push a directory to github  
```powershell
> gitfast "repo-name"
```
- *Assumes:* You're tryin to push to this github page  


##### gomo
Spin up a demo project for go. Assumes you have content for a "main.go" file in clipboard.  
```powershell
> gomo demo_project_name/or/path
```
- *Assumes:* [Golang](https://golang.org) has been installed  


##### gosite
cd into ```$env:gopath```  
```powershell
> gosite
```
- *Assumes:* [Golang](https://golang.org) has been installed  


##### gosrc
cd into the directory above the golang installation's /bin  
```powershell
> gosrc
```
- *Assumes:* [Golang](https://golang.org) has been installed and its */bin* directory is on the *path* variable  


##### goto
Open the directory containing a given executable which is accessible via the *path* environment variable. Also echoes the path of the executable  
```powershell
> goto powershell
C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe
```


##### gun
Go run your Golang source file  
```powershell
> gun path/to/my/main/file.go
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
- assumes you've set a `$mdn` variable  


##### mkimagelist
takes file and directory paths and creates a file, named `image_list.txt` with the found images for giving to `ffmpeg`
```powershell
> mkimagelist [path1 [path2 ...]]
```

##### mkimagevid
Commands ffmpeg to create a video using the file generated by `mkimagelist`. The resulting file will be called `out.mp4`
```powershell
> mkimagevid
```

##### mkvid
Commands `ffmpeg` to create a video using a given image and audio file. The resulting file will be called `out.mp4`
```powershell
> mkvid image/file/path audio/file/path
```

##### names
run `ls -n` aka `get-childitem -n` and filter for files whose names match arguments  
```powershell
> names arg1 arg2 argN
```
- case insensitive
<!-- - will include directories unless some file is given, use an empty string to force filtration (this can be very slow in large directories) -->
- *See Also:* [cdls](#cdls)  
- *See Also:* [cls](#cls)  
- *See Also:* [dls](#dls)  

##### nameSpacer
Check if a given path exists and return a version of it that doesn't  
```powershell
> nameSpacer c:/users
c:/users_2
```

##### next
Scan a sequence of directories for names matching a given extension  
```powershell
> next "extension" "directory 1" ... "directory n"
```
- *See Also:* [ext](#ext)  

##### new
Create a new powershell script  
```powershell
> new name1 name2 ... nameN 
# will create:
    # $base/name1.ps1
    # $base/name2.ps1
    ...
    # $base/nameN.ps1
# and open each one in a text editor
```
- Assumes you have set a `$scripts` variable  
- Assumes you have set a `editor` alias  


##### np
open [in] notepad  
```powershell
> np file/path
```


##### npp
open [in] notepad++  
```powershell
> npp path/to/some/thing/or/place
```
- Assumes you have an alias for notepad++ as "n++" in your path or $profile  


##### onde
Find out precisely where executables on the path are located  
```powershell
> onde exe1 exe2 etc..
```
- *Note:* You will have to append '.ps1' if you are looking for powershell scripts  


##### open
Open the given file with the default program
```powershell
> open path/to/file
```

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
```powershell
> pop
```
- "start-process"/"start"/etc don't focus the new window  


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
- Assumes you have set a `editor` alias  


##### pub
Pub get a sequence of arguments  
```powershell
> pub uri1 uri2 #etc...
```
- Assumes you have installed flutter/dart installed  


##### pushenv
Augment an environment variable  
```powershell
> pushenv "key" "value" "separator"
> pushenv "key" "value" 
```
- **Not** persistent  
- **Remember** to use a separator if needed  


##### putenv
Set an environment variable  
```powershell
> putenv "variable" "value"
```
- **Not** persistent  


##### readus
Cat the readme.md files of multiple directories by simply stating the folder names  
```powershell
> cd my/repository/depository
> readus tensorflow python some/other/repo or/folder maybe/its/on/another/disk idk/up/to/you/really
```


##### recycle
Send path to the recycle bin  
```powershell
> recycle path1 path2 pathN
```
- Currently broken  


##### rmp
Remove a file whose path is in the clipboard  
```powershell
> rmp
```
- Equivalent to `rm (get-clipboard)`  


##### sample
move the selected file to the samples folder  
```powershell
> sample
# gets path from clipboard
> sample arg1 arg2 ... argN
# act on a sequence of arguments
```
- Assumes you have set a `$samples` variable  


##### scrap
Rage quit the project in the current directory by sending it to the recycle bin  
```powershell
> scrap
```
- Requires recycle  


##### sizes
Print the names and sizes of files in the current directory, first argument(s) denote(s) [a] search term[s], if the last argument is an int it will mean b, kb, mb (default), or gb mode  
```powershell
> sizes [search_term_1 ... search_term_N] [0_1_2_or_3]
```
- case insensitive


##### sound
Open the sound control panel  
```powershell
> sound
```


##### splee2
Split an audio stream into a vocal and instrumental track  
```powershell
> splee2 path/to/audio/file
```
- Assumes you have python and have previously installed [spleeter](https://github.com/deezer/spleeter)  


##### splee4
Split an audio stream into a vocal, instrumental, drum, bass, and piano tracks  
```powershell
> splee4 path/to/audio/file
```
- Assumes you have python and have previously installed [spleeter](https://github.com/deezer/spleeter)  


##### splee5
Split an audio stream into a vocal, instrumental, drum, bass, and piano tracks  
```powershell
> splee5 path/to/audio/file
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
- Assumes you have previously cloned [docs.sublimetext.io](https://github.com/sublimetext-io/docs.sublimetext.io)  


##### st
Open a sequence of arguments (or the current directory) in sublime text  
```powershell
> st dir/file1.ext file2.ext .
```
- Assumes you have previously installed [Sublime Text](https://www.sublimetext.com) and have it aliased as "sublime"  


##### tilde
ssh into tilde  
```powershell
> tilde
```


##### unix
Convert the path of the current directory to wsl-unix form and send it to the clip-board  
```powershell
> unix
```


##### y22
Grab a 1280x720-720p MP4 video (where applicable)  
```powershell
> y22 url1 url2 urlN
```
- Assumes you have installed [youtube-dl](https://github.com/ytdl-org/youtube-dl)  
- Assumes $ytdls is set  


##### yda
Youtube download the audio streams associated with a sequence of arguments  
```powershell
> yda url1 url2 urlN
```
- Assumes you have installed [youtube-dl](https://github.com/ytdl-org/youtube-dl)  
- Assumes $ytdls is set  
- uses [ind](#ind)  


##### ydc
Check the available formats associated with a sequence of arguments  
```powershell
> ydc url1 url2 urlN
```
- Assumes you have installed [youtube-dl](https://github.com/ytdl-org/youtube-dl)  


##### ydl
Youtube download the audio streams associated with a sequence of arguments  
```powershell
> ydl url1 url2 urlN
```
- Assumes you have installed [youtube-dl](https://github.com/ytdl-org/youtube-dl)  
- uses [ind](#ind)  
 

##### ytdls
cd into a pre-defined directory  
```powershell
C:\Windows\System32> ytdls url1 url2 urlN
pre/defined/directory> 
```
- Assumes $ytdls is set  
- uses [ind](#ind)  
