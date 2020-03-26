if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

# added by Miniconda3 4.3.11 installer
# export PATH="/Users/brandomiranda/miniconda3/bin:$PATH"  # commented out by conda initialize

# opam configuration
test -r /Users/brandomiranda/.opam/opam-init/init.sh && . /Users/brandomiranda/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true
# added by Anaconda3 2019.07 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/Users/brandomiranda/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/Users/brandomiranda/anaconda3/etc/profile.d/conda.sh" ]; then
# . "/Users/brandomiranda/anaconda3/etc/profile.d/conda.sh"  # commented out by conda initialize
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/Users/brandomiranda/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda init <<<
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/brandomiranda/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
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
