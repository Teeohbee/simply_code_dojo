#!/bin/bash

echo "Thanks for coming to Code Dojo Club!"
echo "====="

working_directory="${PWD##*/}"
user="$USER"
branch_name="$working_directory"_"$user"
echo "Checking out new branch - $branch_name"
git co -b $branch_name
echo "====="

echo "Pushing branch to origin"
git push --set-upstream origin $branch_name
