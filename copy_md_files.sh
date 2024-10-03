#!/bin/bash

# Create src.md directory if it doesn't exist
mkdir -p src.md

# Find and move .md files, preserving directory structure
find src -name "*.md" -exec bash -c 'mkdir -p src.md/$(dirname "{}") && mv "{}" src.md/$(dirname "{}")' \;

# Add src.md to .gitignore if it's not already present
if ! grep -q "src.md/" .gitignore; then
  echo "src.md/" >> .gitignore
fi

echo "Markdown files have been moved to src.md, maintaining folder structure, and .gitignore updated."
