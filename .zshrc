## prompt
## to test do: print -P '%B%F{red}co%F{green}lo%F{blue}rs%f%b'
# ref: http://zsh.sourceforge.net/Doc/Release/Prompt-Expansion.html#Prompt-Expansion
# ref: reference: https://wiki.archlinux.org/index.php/Zsh#Colors
# ref: https://scriptingosx.com/2019/07/moving-to-zsh-06-customizing-the-zsh-prompt/
# %F{color} sets colour until next color of %f, %B infront of that changes tone

PROMPT="%B%F{magenta}%n%B%F{red}%~%B%F{green} %F{cyan}❯%f "

# my old bash one
#export PS1="\[$LIGHT_GREY\]\u\[$LIGHT_PURPLE\]\w\[$LIGHT_GREY\] \$ \[$LIGHT_CYAN\]"

## aliases

alias grep='grep --color=auto'

#http://linux-sxs.org/housekeeping/lscolors.html
LS_COLORS='di=1:fi=96:*.m=31:*.py=32:*.txt=36:*.out=35'
export LS_COLORS

source jump-module.bash

completemarks() {
  local curw=${COMP_WORDS[COMP_CWORD]}
  local wordlist=$(find $MARKPATH -type l -printf "%f\n")
  COMPREPLY=($(compgen -W '${wordlist[@]}' -- "$curw"))
  return 0
}

complete -F _completemarks jump unmark

export PATH="$PATH:$HOME/bin"\
# add maude
export PATH="$PATH:$HOME/bin/Maude-2.7.1-osx"\

export DOCKER_ID_USER='brandojazz'

export MIZFILES="/usr/local/share/mizar"

alias tcoq="/Users/brandomiranda/home_simulation_research/gamepad/tcoq/bin/coqc"


export PATH=/usr/local/opt/ruby/bin:$PATH
export PATH=$HOME/.gem/ruby/2.6.0/bin:$PATH

conda activate atp
