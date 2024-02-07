#!/bin/bash

# Define the branches
branches=("prod" "dev" "qa")

# Loop through each branch
for branch in "${branches[@]}"
do
    # Checkout the branch
    git checkout $branch

    # Create a file with the branch name
    echo "This is $branch branch" > $branch.txt

    # Add the file to the staging area
    git add $branch.txt

    # Commit the changes
    git commit -m "Add $branch.txt"

    # Push the changes to the branch
    git push origin $branch

    echo "Created $branch.txt and committed to $branch branch"
done
