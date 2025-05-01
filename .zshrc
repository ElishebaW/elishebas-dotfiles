# Java Home settings
export JAVA_HOME=$(/usr/libexec/java_home -v 17)
export PATH=$JAVA_HOME/bin:$PATH

# Java Home settings
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-21.jdk/Contents/Home
export PATH=$JAVA_HOME/bin:$PATH

# Alias for switching Java versions
alias java17='export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk-17.0.12.jdk/Contents/Home"'
alias java11='export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk-11.0.7.jdk/Contents/Home"'
alias python='/usr/local/bin/python3.11'
alias python3='/usr/local/bin/python3.11'
alias pipi='pip3.11 install'

alias fedit="find . -name"
alias ta="cd /Users/elishebawiggins/CascadeProjects/local-llm-projects/time_analyzer_ai"

export PATH="/usr/local/bin:$PATH"

# export PATH="/usr/bin:$PATH"
# export PATH="$HOME/Library/Python/3.9/bin:$PATH"
# export PATH="/opt/homebrew/bin:$PATH"
# unalias python3 2>/dev/null  # Remove any existing alias

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export PATH=$PATH:$(go env GOPATH)/bin

parse_git_branch() {
    git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/[\1]/p'
}
COLOR_DEF='%f'
COLOR_USR='%F{243}'
COLOR_DIR='%F{197}'
COLOR_GIT='%F{39}'
NEWLINE=$'\n'
setopt PROMPT_SUBST
export PROMPT='${COLOR_DIR}%d ${COLOR_GIT}$(parse_git_branch)${COLOR_DEF}%% '

windsurf() {
  mkdir -p "$(dirname "$1")"
  touch "$1"
  open -a "Windsurf" "$1"
}

# Source sensitive settings
[[ -f ~/.zshrc.secret ]] && source ~/.zshrc.secret
