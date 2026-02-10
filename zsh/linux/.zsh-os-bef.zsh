# OS-specific directives to be sourced BEFORE sourcing .zshrc

# Homebrew
# if the binary is there, the installation happened
if [[ -f /home/linuxbrew/.linuxbrew/bin/brew ]]
then
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
fi
