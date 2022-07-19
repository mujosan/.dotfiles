# Edit ZSH config files
alias ohmyzsh='code ~/.oh-my-zsh'
alias zshconfig='code ~/.zshrc'
alias zshalias='code ~/.oh-my-zsh/custom/aliases.zsh'

# SSH logins
alias mcpi='ssh ubuntu@mcpi.local'
# SSH commands
alias relclean="ssh mhorner@hroor.ssd.hursley.ibm.com 'rm -fr /home/mhorner/web/public/*'"


# Navigation
alias gorb='cd ~/Documents/Computing/Development/Ruby'
alias gopy='cd ~/Documents/Computing/Development/Python'
alias gort='cd ~/Documents/Computing/Development/Rust'

# Apps
alias peek='tar tvzf'
alias rng='RNparse.rb -af | grep'

# MacOS specific aliases
if [[ $OSTYPE == darwin* ]]; then
    # Lock screen
    alias sloc='/System/Library/CoreServices/"Menu Extras"/User.menu/Contents/Resources/CGSession -suspend'

    # Show/hide dot files in Finder
    alias show='defaults write com.apple.finder AppleShowAllFiles YES'
    alias hide='defaults write com.apple.finder AppleShowAllFiles NO'

fi

# Linux specific aliases
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    alias distro='cat /etc/*-release'
fi


alias la='ls -la'
alias lr='ls -lart'

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


