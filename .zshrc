pip install wandb --upgrade

# In my 2013 mac this seems to be needed (reset PATH to a new virgin one)
PATH=/usr/bin:/bin:/usr/sbin:/sbin
export PATH
export PATH=/opt/homebrew/bin:$PATH

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

#conda activate metalearning
# conda activate synthesis
conda activate meta_learning

## Aliases
alias grep='grep --color=auto'
alias intel='ssh -i ~/.ssh/intel_id_rsa miranda9@ssh-iam.intel-research.net'
alias hal='ssh miranda9@hal.ncsa.illinois.edu'
alias vision='ssh miranda9@vision-submit.cs.illinois.edu'
alias nano='ssh miranda9@nano.ncsa.illinois.edu'
alias dgx='ssh miranda9@hal-dgx.ncsa.illinois.edu'
alias sshcc='ssh miranda9@cc-login.campuscluster.illinois.edu'

#alias tb='tensorboard --logdir'
#alias tbb='sh /Users/brando/ultimate-utils/run_tb.sh'
alias tbb="sh ${HOME}/ultimate-utils/sh_files_repo/run_tb.sh"

export WANDB_API_KEY=WANDB_SECRET

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/brandomiranda/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/brandomiranda/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/brandomiranda/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/brandomiranda/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
