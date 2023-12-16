#!/bin/bash

# pre-commit hook script to run linting before each commit

echo "Running linting..."

# Example: Run your linting command, replace 'lint-command' with your actual linting command
lint-command

# Capture the exit code of the linting command
lint_exit_code=$?

# Check if there are linting errors
if [ $lint_exit_code -ne 0 ]; then
  echo "Linting failed. Commit aborted."
  exit 1
fi

echo "Linting passed. Committing..."
exit 0