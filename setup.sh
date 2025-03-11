#!/bin/bash
bash_profile_path="$HOME/.bash_profile"

# Check if the lines already exist in .bash_profile
if ! grep -q "figlet -f slant" "$bash_profile_path"; then
    echo "Adding welcome message to $bash_profile_path..."
    cat <<EOF >> "$bash_profile_path"




# Install figlet if not installed
if ! command_exists figlet; then
    echo "figlet is not installed. Installing figlet..."
    if command_exists apt; then
        sudo apt install -y figlet
    elif command_exists brew; then
        brew install figlet
    elif command_exists yum; then
        sudo yum install -y epel-release
        sudo yum install -y figlet
    else
        echo "Unsupported package manager. Please install figlet manually."
        exit 1
    fi
fi

# Install lolcat if not installed
if ! command_exists lolcat; then
    echo "lolcat is not installed. Installing lolcat..."
    if command_exists apt; then
        sudo apt install -y lolcat
    elif command_exists brew; then
        brew install lolcat
    elif command_exists yum; then
        sudo yum install -y ruby
        sudo gem install lolcat
        echo "Gems are installing......"
    else
        echo "Unsupported package manager. Please install lolcat manually."
        exit 1
    fi





# Personalized Welcome Message
echo "Welcome to the Server"
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

echo "Setup complete! Please restart your terminal to see the changes."
echo -e "\e[31m"

echo "                         +=================+
                         |+-+-+-+-+-+-+-+-+|
        Team: >>>>       ||P|y|t|h|o|m|a|s||
                         |+-+-+-+-+-+-+-+-+|
                         +=================+                                                          
                  "
echo " Done "
cd ..
