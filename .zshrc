# initialize zplug
if [[ "$OSTYPE" == "linux-gnu" ]]; then
  # installed via https://github.com/zplug/zplug#the-best-way
  export ZPLUG_HOME=$HOME/.zplug
elif [[ "$OSTYPE" == "darwin"* ]]; then
  # installed via `brew install zplug`
  export ZPLUG_HOME=/usr/local/opt/zplug
else
  # Unknown.
  echo "Unrecognized OS: ${OSTYPE}"
fi
source $ZPLUG_HOME/init.zsh

# let zplug manage itself
zplug "zplug/zplug"

## Plugins for zsh

# new `jump`
zplug "plugins/wd", from:oh-my-zsh

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

alias tcoq="/Users/brandomiranda/home_simulation_research/gamepad/tcoq/bin/coqc"
alias grep='grep --color=auto'



## jump TODO: switch to zsh's wd

source jump-module.bash

completemarks() {
  local curw=${COMP_WORDS[COMP_CWORD]}
  local wordlist=$(find $MARKPATH -type l -printf "%f\n")
  COMPREPLY=($(compgen -W '${wordlist[@]}' -- "$curw"))
  return 0
}

complete -F _completemarks jump unmark

## Path
export PATH="$PATH:$HOME/bin"\

# add maude
export PATH="$PATH:$HOME/bin/Maude-2.7.1-osx"\

export DOCKER_ID_USER='brandojazz'

export MIZFILES="/usr/local/share/mizar"

export PATH=/usr/local/opt/ruby/bin:$PATH
export PATH=$HOME/.gem/ruby/2.6.0/bin:$PATH

## Conda stuff

conda init zsh
source activate atp

## coloring for LS (i.e. LS_COLOR)
# https://github.com/robbyrussell/oh-my-zsh/issues/5349
# http://linux-sxs.org/housekeeping/lscolors.html

#unset LSCOLORS
#export CLICOLOR=1
#export CLICOLOR_FORCE=1

#LS_COLORS='no=00;37:fi=00:di=00;33:ln=04;36:pi=40;33:so=01;35:bd=40;33;01:'
#export LS_COLORS
#zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

#LS_COLORS='di=1:fi=96:*.m=31:*.py=32:*.txt=36:*.out=35'
#export LS_COLORS
#zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

#zstyle ':completiom:*' list-colors 'di=1:fi=96:*.m=31:*.py=32:*.txt=36:*.out=35'

#zstyle ':completion:*' list-colors 'di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/brandomiranda/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/brandomiranda/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/brandomiranda/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/brandomiranda/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
