# Edit ZSH config files
alias ohmyzsh='code ~/.oh-my-zsh'
alias zshconfig='code ~/.zshrc'
alias zshalias='code ~/.oh-my-zsh/custom/aliases.zsh'

# SSH logins
alias mcpi='ssh ubuntu@mcpi.local'
# SSH commands
alias relclean="ssh mhorner@hroor.ssd.hursley.ibm.com 'rm -fr /home/mhorner/web/public/*'"


# Navigation
alias gorb='cd ~/Documents/Development/Ruby'
alias gopy='cd ~/Documents/Development/Python'
alias gort='cd ~/Documents/Development/Rust'

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

alias la='ls -la'
alias lr='ls -lart'

alias sz='source $HOME/.zshrc'

alias xit='exit'

# Suffix aliases
# Markdown files
alias -s md=code
# JSON files
alias -s json=code
# bulk association
alias -s {cs,ts,html}=code
