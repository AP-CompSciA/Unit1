#!/bin/bash

echo "Updating Unit..."

git checkout main

git add .
git commit -m "Saving current work before update." || true

git fetch origin
git branch -f main-backup

git rebase -X ours origin/main
git push --force-with-lease

echo
echo "Update complete!"
echo