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


## jump TODO: switch to zsh's wd

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/brando/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/brando/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/brando/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/brando/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

#conda activate automl-meta-learning-py3.7
conda activate automl-meta-learning
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"

## Aliases
alias grep='grep --color=auto'
alias intel='ssh -i ~/.ssh/intel_id_rsa miranda9@ssh-iam.intel-research.net'
alias hal='ssh miranda9@hal.ncsa.illinois.edu'
alias vision='ssh miranda9@vision-sched.cs.illinois.edu'
