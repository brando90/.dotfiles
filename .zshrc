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

## Aliases
alias grep='grep --color=auto'

## jump TODO: switch to zsh's wd
