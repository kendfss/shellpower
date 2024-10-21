# Aliases
# set-alias lyx "C:\Program Files (x86)\LyX 2.3\bin\LyX.exe"
set-alias edge "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe"
# set-alias curl "C:\ProgramData\chocolatey\bin\curl.exe"
set-alias vlc "C:\Program Files\VideoLAN\VLC\vlc.exe"
# set-alias py38 "E:\Languages\Python38-64\python.exe"
set-alias firefox "C:\Program Files\Mozilla Firefox\firefox.exe"
# set-alias pm "F:\Programs\Workstations\FL Studio 20.8.1\System\Tools\Plugin Manager\PluginManager.exe"
set-alias chrome "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"
set-alias -option AllScope cls "c:/shellpower/cls.ps1"
# set-alias gw "ghostwriter.exe"
set-alias envars "SystemPropertiesAdvanced.exe"
# set-alias sublime "E:\IDEs\Sublime Text 3\sublime_text.exe"
# set-alias brython brython-cli
# set-alias ptp ptpython
# set-alias sumatra "C:\Program Files\SumatraPDF\SumatraPDF.exe"
set-alias c set-clipboard
set-alias p get-clipboard
set-alias editor (where.exe hx)
# set-alias make "C:\msys64\usr\bin\make.exe"
set-alias s select
set-alias touch "C:\Program Files\Git\usr\bin\touch.exe"
set-alias grep "C:\Program Files\Git\usr\bin\grep.exe"
set-alias find "C:\Program Files\Git\usr\bin\find.exe"
set-alias less "C:\Program Files\Git\usr\bin\less.exe"
set-alias head "C:\Program Files\Git\usr\bin\head.exe"
set-alias tail "C:\Program Files\Git\usr\bin\tail.exe"
set-alias gbash "C:\Program Files\Git\git-bash.exe"
# Variables
# $startup = "C:\Users\Kenneth\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
# $ytdls = "f:/ytdls"
$scripts = "c:/shellpower"
# $mdn = "E:\gitting\gitclone\clones\mdn\content\files\en-us"
# $samples = join-path $ytdls "samples"
# $filth = "e:/projects/web/tilde/eli2and40-tilde_club/organized"
$EDITOR=(where.exe hx)
if ($PWD -eq "C:\Windows\System32") {
    cd ~
}
# clear
