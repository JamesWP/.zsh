#PATH AND FATH

fpath+=('~/.zsh/functions')


export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH
export PATH=$PATH:/Users/james/installs/mongodb/bin
export PATH=$PATH:/Users/james/bin
export PATH=$PATH:.

zstyle :compinstall filename '~/.zsh/init'

autoload -Uz compinit
compinit

zstyle ':completion:*' menu select
zstyle ':completion:*' list-colors 'di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'


# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
# End of lines configured by zsh-newuser-install
eval $(thefuck --alias)


# prompt
setopt PROMPT_SUBST
autoload -U colors && colors

# Zsh to use the same colors as ls
PROMPT="%{$fg[blue]%}%m %{$fg[yellow]%}$(python ~/.zsh/scripts/path.py) %{$reset_color%}%{$fg[green]>%} %{$reset_color%}"

# show dir when first tab pressed
first-tab() {
    if [[ $#BUFFER == 0 ]]; then
        BUFFER="cd "
        CURSOR=3
        zle list-choices
    else
        zle expand-or-complete
    fi
}
zle -N first-tab
bindkey '^I' first-tab


# standard config
alias kilburn="ssh -Y mbax3jp2@kilburn.cs.man.ac.uk"
alias tmux="TERM=screen-256color tmux"
alias k="kilburn"
alias onswitchdev="ssh jamesp@10.110.205.59"
alias onswitch="ssh james@10.110.205.110"
alias pi="ssh pi@pi.j-wp.co.uk" 
alias ps=htop
alias tmux="tmux -2"
alias vi='mvim -v'
alias vim='mvim -v'
alias :wq='exit'
alias ll='ls -lGh'
alias serve=nws
alias gs='git status'
alias speedtest='wget -O /dev/null http://speedtest.wdc01.softlayer.com/downloads/test10.zip'

