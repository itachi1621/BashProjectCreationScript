#! /bin/bash

check_if_exists(){
    if [ -d "$1" ]; then
        echo "Directory $1 exists already. Please choose another name."
        exit 1
    fi
}

create_project_files(){
    
    echo "Creating project files"
    git init
    git branch -M main
    touch .gitignore
    touch README.md
    echo "# $1" >> README.md
    touch LICENSE
    touch "$1.sh"
    echo "#!/bin/bash" >> "$1.sh"
    chmod +x "$1.sh"
    echo "Bash Project $1 created"
}

# Check if project name is provided
if [ $# -ne 1 ]; then
  echo "Usage: $0 <project_name>" # $0 is the script name
  exit 1 # Exit with error 
fi

pname=$1

check_if_exists "$pname"

echo "Creating project $pname"
echo "Creating directory structure"
mkdir "$pname"


cd "$pname" || echo "Failed " exit

create_project_files "$pname"



