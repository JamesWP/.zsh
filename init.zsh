#PATH AND FATH

fpath=('~/.zsh/functions' $fpath)
export fpath


export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH
export PATH=$PATH:/Users/james/installs/mongodb/bin
export PATH=$PATH:/Users/james/bin
export PATH=$PATH:.



# The following lines were added by compinstall
zstyle :compinstall filename '~/.zsh/init'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
# End of lines configured by zsh-newuser-install
eval $(thefuck --alias)

# correction
setopt correctall

# prompt
autoload -U promptinit
promptinit
      
source ~/.zsh/functions/prompt_jair_setup


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
alias ll='ls -lh'
alias serve=nws
alias gs='git status'
alias speedtest='wget -O /dev/null http://speedtest.wdc01.softlayer.com/downloads/test10.zip'

