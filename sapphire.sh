#!/bin/bash


## Sapphire was created by:
## Zhamkov Nikita Dmitrievich

## GitHub: https://github.com/plugg1N


## How to use?:
# 1. Initialize a Git repository in a folder
# 2. Create a file called "sapphire.cfg"
# 3. Fill a file with needed info:
#     - message=(commit message)
#     - branch=(branch to push to)
# 4. Run command "sapphire" to push refs

sapphire_file="sapphire.cfg"


# Check of sapphire cfg is in the git directory
if [ ! -f "$sapphire_file" ]; then
    echo "The 'sapphire.cfg' file does not exist in directory."
    exit 1
fi


while IFS='=' read -r key value
do
    if [ "$key" == "message" ]; then
	message="${value}"

    elif [ "$key" == "branch" ]; then
	branch="$value"

    fi
done < "$sapphire_file"


message=${message:-"sapphire auto commit"}
branch=${branch:-"main"}



# Check if git is initialized
init_git() {
    if [ ! -d ".git" ]; then
	echo "This directory is not a Git repository. Run 'git init'"
	exit 1
    fi
}

# Add origin
add_remote_origin() {
    git remote add origin $link
}


# Create .gitignore and ignore .cfg file
create_gitignore() {

    if ! grep -Fxq "sapphire.cfg" .gitignore 2>/dev/null; then
	echo "sapphire.cfg" >> .gitignore

    fi
}


# Run the script
sapphire-run() {
    init_git
    create_gitignore
    git add .
    git checkout -b $branch || git checkout $branch
    git commit -m "$message"
    git push -u origin $branch
}

sapphire-run
echo -e "\nThank you for using Sapphire!\nEverything was pushed successfully!\nMade by: plugg1N (GitHub)"
