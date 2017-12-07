# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/pudding/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"
# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(
    git 
    colorize 
    extract 
    z 
    zsh-syntax-highlighting 
    )

source $ZSH/oh-my-zsh.sh

# User configuration
stty sane

######### ALISES ################
#
# Open ~/.zshrc
alias zshconfig="vim ~/.zshrc"

# Abbr. of proxychains
alias pc4="proxychains4"

# Map cat to colorize for highlighting
alias cat="colorize"

# Show Pubkey
alias pubkey="ssh-add -L"

# Replace old Vim to new one
alias vim="/Applications/MacVim.app/Contents/MacOS/Vim"

# Restart gpg agent
alias restart_gpg_agent="~/scripts/restart_gpgagent.sh"

# Ask if restart GPG agent needed when ssh failed to login
alias ssh="~/scripts/ssh_over_gpg.sh"
#
######### END ALISES ############


#### GPG Configuration BEGIN ####
gpg-agent --daemon &> /dev/null  # Silent is gold. 
GPG_TTY=$(tty)
export GPG_TTY
export SSH_AUTH_SOCK="${HOME}/.gnupg/S.gpg-agent.ssh"
if [ -f "${HOME}/.gpg-agent-info" ]; then
    . "${HOME}/.gpg-agent-info"
    export GPG_AGENT_INFO
    export SSH_AUTH_SOCK
fi
#### GPG Configuration END ####
