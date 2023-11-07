# Sapphire ✨


![my-gif](https://github.com/plugg1N/sapphire-gc/blob/main/refs/show.gif)


## Your favourite commit tool for GitHub

![https://github.com/plugg1N](https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white)
![Ubuntu](https://img.shields.io/badge/Ubuntu-E95420?style=for-the-badge&logo=ubuntu&logoColor=white)

Sapphire is a fast and concise tool for developers to commit changes and push refs to
their repositories!

**Be Careful!** This tool was *not* created in order to be a replacement for a standart GIT workflow. Use this tool *wisely* for projects that were created for 
recreational reasons or if the project is not that massive.

> I will not try to overcomplicate my project, if it doesn't fit one's needs for their massive enterprise-level repository!
> Those projects **should be** handled manually without any tools

Made by: Zhamkov Nikita Dmitrievich
Country, city: Russia, Saint-Petersburg

## Installation

1. Clone this repository, using:
```bash
git clone https://github.com/plugg1N/sapphire-gc.git
```

2. Run `install.sh` script to install **Sapphire**:

```bash
cd sapphire-gc && ./install.sh
```
Installation script will add main script to your system's binaries

## How to use?
1. Initiate a Git repository in a directory with your project
```bash
git init
```

2. Remote to your repository *(preferably using **SSH**)*
```bash
git remote add origin https://github.com/OWNER/REPOSITORY.git
```

3. In a Git repository file, create a `sapphire.cfg` file using **NEW** function:

```bash
sapphire -cc OR sapphire --create-cfg
```
This function will create a working copy of`sapphire.cfg` automatically at your directory, that is ready for usage

Or create `sapphire.cfg` manually

*Example of `sapphire.cfg` file:*
```txt
message=Initial commit
branch=main
```

4. In same directory, run:
```bash
sapphire
```

## How to contribute?

If you have faced any issues using this repository: please send an issue to `issues` section of this repository!
Everyone is open to contribute to this project as well! ✨




