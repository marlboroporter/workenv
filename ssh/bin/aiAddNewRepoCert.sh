#!/bin/bash

# --------- this is AI generated and it works
# register to local agent part does not work same as manual one
# check with ssh-add -l 
#   if no identities found, rerun ssh-add   
# --------
#
# Define variables
SSH_DIR=~/.ssh
CONFIG_FILE="$SSH_DIR/config"

# Prompt for service host and email
read -p "Enter the git service hostname (e.g., github.com or gitlab.com): " GIT_HOST
read -p "Enter your email address for the SSH key comment: " USER_EMAIL
read -p "Enter the desired SSH config 'Host' alias (e.g., github-personal, default is $GIT_HOST): " HOST_ALIAS

# Set default alias if none provided
if [ -z "$HOST_ALIAS" ]; then
    HOST_ALIAS="$GIT_HOST"
fi

KEY_NAME="${GIT_HOST%.*}-$HOST_ALIAS" # e.g., github-com-github-personal
KEY_PATH="$SSH_DIR/$KEY_NAME"

# 1. Create the ~/.ssh directory if it doesn't exist and set permissions
mkdir -p "$SSH_DIR"
chmod 700 "$SSH_DIR"

# 2. Generate SSH key pair
echo "Generating new SSH key for $GIT_HOST with comment $USER_EMAIL..."
# -t ed25519 specifies the key type, -C adds a comment, -f specifies the output file path
ssh-keygen -t ed25519 -C "$USER_EMAIL" -f "$KEY_PATH" -N "" > /dev/null 2>&1
if [ $? -eq 0 ]; then
    echo "SSH key pair generated successfully:"
    echo "  Private key: $KEY_PATH"
    echo "  Public key:  $KEY_PATH.pub"
else
    echo "Failed to generate SSH key. Aborting."
    exit 1
fi

# 3. Create or update the ~/.ssh/config file
if [ ! -f "$CONFIG_FILE" ]; then
    touch "$CONFIG_FILE"
    chmod 600 "$CONFIG_FILE"
    echo "Created new SSH config file: $CONFIG_FILE"
fi

# Add entry to the config file
echo "" >> "$CONFIG_FILE"
echo "# $HOST_ALIAS entry for $GIT_HOST" >> "$CONFIG_FILE"
echo "Host $HOST_ALIAS" >> "$CONFIG_FILE"
echo "  HostName $GIT_HOST" >> "$CONFIG_FILE"
echo "  User git" >> "$CONFIG_FILE"
echo "  IdentityFile $KEY_PATH" >> "$CONFIG_FILE"
echo "  IdentitiesOnly yes" >> "$CONFIG_FILE" # Ensures only the specified key is used

echo "SSH config entry added for Host alias: $HOST_ALIAS"

# 4. Add the new private key to the ssh-agent
eval "$(ssh-agent -s)" > /dev/null
ssh-add "$KEY_PATH" > /dev/null 2>&1
echo "SSH key added to ssh-agent."

# 5. Instructions for adding the public key to the service
echo ""
echo "--- NEXT STEP ---"
echo "You must manually add the public key to your $GIT_HOST account settings."
echo "1. Copy the public key content to your clipboard:"
echo "   cat $KEY_PATH.pub"
echo ""
echo "2. Log in to $GIT_HOST and navigate to your [SSH keys settings](https://github.com) (for GitHub) or [SSH keys settings](https://gitlab.com/-/profile/keys) (for GitLab)."
echo "3. Click 'Add new key', paste the content, give it a title, and save."
echo ""

# 6. Test the connection
echo "After adding the key online, test the connection with:"
echo "ssh -T git@$HOST_ALIAS"


