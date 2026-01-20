#!/usr/bin/env bash

# Check if a directory name was provided
if [ -z "\$1" ]; then
    echo "Usage: \$0 <directory_name>"
    exit 1
fi

DIR_NAME="\$1"
# Find directories matching the provided name
DIRS=( */ )   # Get all directories in the current path
MATCHES=()

for DIR in "\${DIRS[@]}"; do
    # Remove trailing slash from directory name for comparison
    BASENAME="\${DIR%/}"
    if [[ "\$BASENAME" == "\$DIR_NAME" ]]; then
        MATCHES+=("\$BASENAME")  # Add to matches
    fi
done

# Check the number of matches
MATCH_COUNT=\${#MATCHES[@]}

if [[ \$MATCH_COUNT -eq 1 ]]; then
    # Change to the matched directory
    cd "\${MATCHES[0]}" || exit
    echo "Changed directory to: \${MATCHES[0]}"
elif [[ \$MATCH_COUNT -gt 1 ]]; then
    # More than one match found
    echo "Multiple directories found:"
    for MATCH in "\${MATCHES[@]}"; do
        echo "- \$MATCH"
    done
else
    echo "No directories found matching '\$DIR_NAME'."
fi
