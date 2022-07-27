# Edit ZSH config files
alias ohmyzsh='code ~/.oh-my-zsh'
alias zshconfig='code ~/.zshrc'
alias zshalias='code ~/.oh-my-zsh/custom/aliases.zsh'

# Navigation
alias godf='cd ~/.dotfiles'

# Apps
alias peek='tar tvzf'
alias rng='RNparse.rb -af | grep'

# Host specific aliases
if [[ $HOST == frink ]]; then
    # Navigation
    alias gorb='cd ~/Documents/Computing/Development/Ruby'
    alias gopy='cd ~/Documents/Computing/Development/Python'
    alias gort='cd ~/Documents/Computing/Development/Rust'
    # SSH logins
    alias mcpi='ssh ubuntu@mcpi.local'
    # SSH commands
    alias piholeup="ssh pi@pihole.local 'pihole -up'"
fi

# MacOS specific aliases
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

# Linux specific aliases
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    alias distro='cat /etc/*-release'
    # List files by size
    alias lt='ls --human-readable --size -1 -S --classify'
    # View only mounted drives
    alias mnt="mount | awk -F' ' '{ printf \"%s\t%s\n\",\$1,\$3; }' | column -t | egrep ^/dev/ | sort"
fi

alias ll='ls -alF'
alias la='ls -la'
alias lr='ls -lart'
alias l='ls -CF'
alias cls="clear; printf '\033[3J'"

alias sz='source $HOME/.zshrc'
alias myip='curl http://ipecho.net/plain; echo'
alias ffs='sudo !!'
alias xit='exit'

# Suffix aliases
# Markdown files
alias -s md=code
# JSON files
alias -s json=code
# bulk association
alias -s {cs,ts,html}=code

# Global aliases
alias -g L='| less'
alias -g G='| grep'

# Function aliases
function acp() {
git add .
git commit -m "$1"
git push
}


