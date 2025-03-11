#!/bin/bash
bash_profile_path="$HOME/.bash_profile"

# Check if the lines already exist in .bash_profile
if ! grep -q "figlet -f slant" "$bash_profile_path"; then
    echo "Adding welcome message to $bash_profile_path..."
    cat <<EOF >> "$bash_profile_path"

# Personalized Welcome Message
echo "Welcome to the Terminal"
echo "Enter Your Name: "
read -r name
echo -e '\e[31m'
figlet -f standard "\$name" | lolcat
echo -e '\e[0m'
echo "Welcome \$name to the Terminal."
EOF
    echo "Welcome message added to $bash_profile_path."
else
    echo "Welcome message already exists in $bash_profile_path."
fi

# Reload .bash_profile to apply changes
source "$bash_profile_path"
