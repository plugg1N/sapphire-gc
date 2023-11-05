#!/bin/bash

sapphire_file="sapphire.cfg"

if [ ! -f "$sapphire_file" ]; then
    echo "The 'sapphire.cfg' file does not exist in directory."
    exit 1
fi


source $sapphire_file

message=${message:-"sapphire auto commit"}
branch=${branch:-"main"}

init_git() {
    if [ ! -d ".git" ]; then
	echo "This directory is not a Git repository. Run 'git init'"
	exit 1
    fi
}

add_remote_origin() {
    git remote add origin $link
}


create_gitignore() {

    if ! grep -Fxq "sapphire.cfg" .gitignore 2>/dev/null; then
	echo "sapphire.cfg" >> .gitignore

    fi
}


sapphire-run() {
    init_git
    add_remote_origin
    create_gitignore
    git add .
    git checkout -b $branch || git checkout $branch
    git commit -m "$message"
    git push -u origin $branch
}

sapphire-run
echo -e "\nThank you for using Sapphire!\nEverything was pushed successfully!"
