function goBack {
    if ($startingDir) {
        cd $startingDir
    }
}

if ((split-path -Path $pwd -Leaf).ToLower() -ne "shellpower") {
    if ($scripts) {
        $startingDir=$pwd
        cd $scripts
    } else {
        echo "not in shellpower and cannot find it"
        exit 1
    }
}

if ($profile) {
    if (test-path -Path $profile) {
        echo '$profile already exists, not sure what to do (replace or add a source/.).'
        goBack
        exit 1
    }
    if (!(test-path -Path .profile)) {
        echo 'cannot find .profile to source to $profile'
        goBack
        exit 1
    }
    # cat .profile > $profile
    New-Item -ItemType HardLink -Path "$profile" -Target "$(join-path $pwd .profile)" > $null && echo 'hard linked $profile'
}

goBack
