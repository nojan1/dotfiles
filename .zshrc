autoload -U colors && colors

alias vim="nvim"
alias ls="ls --color=auto"
alias git-describe='git log --graph --decorate $(git rev-list -g --all)'

# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats ' @ %b '

# zstyle ':vcs_info:git*' formats "%{$fg[grey]%}%s %{$reset_color%}%r/%S%{$fg[grey]%} %{$fg[blue]%}%b%{$reset_color%}%m%u%c%{$reset_color%} "

setopt prompt_subst
prompt='%K{%(?.grey.red)}%(?..%? )%F{yellow}[%F{blue}%3/%F{yellow}]%F{green}${vcs_info_msg_0_}%F{blue}$%f%k '

calc() { printf "%s\n" "$@" | bc -l; }

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
