#!/bin/bash

# --- Git Workflow Starter ---
# This script automates the process of starting a new task.
# 1. Asks for a branch name.
# 2. Syncs the main branch.
# 3. Creates and switches to the new branch.

# Set the default main branch name. Change if you use "master".
MAIN_BRANCH="main"

echo "Enter the name for your new branch (e.g., feature/add-user-login):"
read -r BRANCH_NAME

# Check if a branch name was provided.
if [ -z "$BRANCH_NAME" ]; then
    echo "❌ No branch name entered. Aborting."
    exit 1
fi

echo ""
echo "🔄 Preparing your workspace..."

# --- Step 1: Syncing the main branch ---
echo "1. Switching to '$MAIN_BRANCH' branch..."
git checkout $MAIN_BRANCH

echo "2. Pulling the latest changes from the remote..."
git pull origin $MAIN_BRANCH

# Check if the pull was successful
if [ $? -ne 0 ]; then
    echo "❌ 'git pull' failed. Please resolve the issues before creating a new branch."
    exit 1
fi

# --- Step 2: Creating the new branch ---
echo "3. Creating and switching to new branch: '$BRANCH_NAME'..."
git checkout -b "$BRANCH_NAME"

echo ""
echo "✅ Done! You are now on branch '$BRANCH_NAME' and ready to start working."