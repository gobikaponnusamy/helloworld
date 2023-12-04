#!/bin/bash

# Get pull request title and description
PR_TITLE=$(git log -1 --pretty=%s)
PR_DESCRIPTION=$(git log -1 --pretty=%b)

# Read the template file and replace placeholders
sed -e "s/{{PR_TITLE}}/$PR_TITLE/" -e "s/{{PR_DESCRIPTION}}/$PR_DESCRIPTION/" README_TEMPLATE.md > README.md