# T1A3

## Source Control Repository

[https://github.com/flinnthebin/T1A3](URL)

## Styling Conventions

Styling for this code is conformant to the Google Python Style Guide:
[https://google.github.io/styleguide/pyguide.html](URL)

## Features

Kebab - remaps directories and files to use kebab-case naming convention.
The kebab-case format was selected as it is not commonly associated with programming languages,
making it a convenient choice for organizing a Linux filesystem.
The purpose of the script is to simplify and standardize navigation within the filesystem.

Features:
1. Create a backup of the original directory tree in case of user error.
2. Print file information for the items that have been reorganized.
3. Rename a directory tree to kebab-case.

Use case: standardization of repositories cloned from GitHub to keep navigation across a system uniform.

## Implementation Plan

![File Backup Plan](https://github.com/flinnthebin/T1A3/blob/main/backup.png)
![File Analysis Plan](https://github.com/flinnthebin/T1A3/blob/main/analysis.png)
![File Renaming Plan](https://github.com/flinnthebin/T1A3/blob/main/rename.png)

## Installation/Troubleshooting

Run install.sh to add kebab to /usr/bin:

```bash
./install.sh
```

In case the file permissions are not set, simply run:

```bash
chmod +x install.sh
```

If you encounter a permission error like the one below:

```bash
cp: cannot create regular file '/usr/bin/executable': Permission denied
```

Run the script as follows:

```bash
sudo ./install.sh
```

## Testing

### Backup Creation

The backup directory creation feature of kebab can be tested by running the shell script 'backuptest.sh'.
This script will create an empty directory 'TEST', then check if the file 'TEST_backup.tar.gz exists in the present working directory.
The results of the test will print to the terminal.

Usage:

```bash
./backuptest.sh
```

### File Analysis/Renaming

The file analysis feature and renaming feature can be tested manually using the 'testfile.sh' script.
Simply run 'testfile.sh' to populate a series of nested directories, each containing a single text file with a number of spaced 'x' chars
equal to the level of directory nesting.
Run kebab and specify the depth to which you would like the script to execute. The file analysis will show the filetype and wordcount of the files to
the specified directory depth, and the directories will be renamed accordingly.

Usage:

```bash
./testfile.sh
./kebab DIR1
```