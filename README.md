# Bash Project Creation Script

This is a simple shell script that automates the process of creating a new bash script project and initializing Git repository.

## Requirements
1. Bash installed on your system
2. Git installed on your system

## Usage
1. Clone this repository or download the `bash_project_create.sh` script.

2. Open a terminal and navigate to the directory where you want to create your project.

3. Place `bash_project_create.sh` script in that directory 

3. Run the script using the following command:
```
sh /path/to/bash_project_create.sh project_name
```

### Following actions will then happen:
1. The script will create a new directory named with `project_name` 
2. Initialize a Git repository 
3. Set repository branch to `main`
4. Create a `README.md` file with the `project name` as its contents.
5. Create a empty `LICENCE` file.
6. Create a empty `.gitignore` file .
7. Create a shell file with the name `project_name.sh` , make it executable and add a shebang line.

You can start working on your project by opening the project directory in your favorite code editor.

## License
This script is released under the MIT License. Feel free to modify and use it however you like.