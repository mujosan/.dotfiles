# Global aliases
alias ll='ls -alF'
alias la='ls -la'
alias lr='ls -lart'
alias l='ls -CF'
alias cls="clear; printf '\033[3J'"
alias -g L='| less'
alias -g G='| grep'

alias sz='source $HOME/.zshrc'
alias cux='chmod u+x'
alias myip='curl http://ipecho.net/plain; echo'
alias ffs='sudo !!'
alias xit='exit'

# Edit ZSH config files
alias ohmyzsh='code ~/.oh-my-zsh'
alias zshconfig='code ~/.zshrc'
alias zshalias='code ~/.oh-my-zsh/custom/aliases.zsh'

# Global Navigation
alias godf='cd ~/.dotfiles'

# Apps
alias peek='tar tvzf'

# Suffix aliases
# Markdown files
alias -s md=code
# JSON files
alias -s json=code
# bulk association
alias -s {cs,ts,html}=code

# Function aliases
# Add, commit and push a change with commit message parameter
function acp() {
git add .
git commit -m "$1"
git push
}


# Host specific aliases
if [[ $HOST == frink ]]; then
    # Frink Navigation
    alias gorb='cd ~/Documents/Computing/Development/Ruby'
    alias gopy='cd ~/Documents/Computing/Development/Python'
    alias gort='cd ~/Documents/Computing/Development/Rust'
    alias gosh='cd ~/Documents/Computing/Development/Shell'
    # SSH logins
    alias mcpi='ssh ubuntu@mcpi.local'
    # SSH commands
    alias piholeup="ssh pi@pihole.local 'pihole -up'"
fi

# MacOS-specific aliases
if [[ $OSTYPE == darwin* ]]; then
    # Lock screen
    alias sloc='/System/Library/CoreServices/"Menu Extras"/User.menu/Contents/Resources/CGSession -suspend'

    # Show/hide dot files in Finder
    alias show='defaults write com.apple.finder AppleShowAllFiles YES'
    alias hide='defaults write com.apple.finder AppleShowAllFiles NO'

    # List files by size
    alias lt='du -sh * | sort -h'
    # View only mounted drives
    alias mnt='mount | grep -E ^/dev | column -t'
    
    # Mac only suffix aliases
    # Open text files with BBedit
    alias -s txt=bbedit

fi

# Linux-specific aliases
if [[ "$OSTYPE" == "linux-gnu*" ]]; then
    alias distro='cat /etc/*-release'
    # List files by size
    alias lt='ls --human-readable --size -1 -S --classify'
    # View only mounted drives
    alias mnt="mount | awk -F' ' '{ printf \"%s\t%s\n\",\$1,\$3; }' | column -t | egrep ^/dev/ | sort"

    local DISTRO=$(awk -F= '/^NAME/{print $2}' /etc/os-release) # Derive distro
    if [[ ${DISTRO} =~ "Ubuntu" ]] || [[ ${DISTRO} =~ "Debian" ]]; then
        alias sai='sudo apt -y install'
        alias sauu='sudo apt update && sudo apt upgrade -y'
    fi
fi



