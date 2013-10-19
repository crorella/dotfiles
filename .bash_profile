#Alias
alias vi='vim'
alias ls='ls -color'  # add colors for filetype recognition
alias la='ls -Al'          # show hidden files
alias lx='ls -lXB'         # sort by extension
alias lk='ls -lSr'         # sort by size, biggest last
alias lc='ls -ltcr'        # sort by and show change time, most recent last
alias lu='ls -ltur'        # sort by and show access time, most recent last
alias lt='ls -ltr'         # sort by date, most recent last
alias lm='ls -al |more'    # pipe through 'more'
alias lr='ls -lR'          # recursive ls
alias tree='tree -Csu'     # nice alternative to 'recursive ls'

export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

function parse_git_branch () {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

PS1='\[\e[0;36m\]\h:\[\e[1;37m\]\W:\[\e[1;34m\]\u`r=$?; test $r -ne 0 && echo " \[\e[1;31m\]ret:$r"`\[\e[m\]$(parse_git_branch)$ '
