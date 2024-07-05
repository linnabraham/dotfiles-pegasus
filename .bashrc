# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
module load gcc

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/mnt/home/project/clinn/miniconda/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/mnt/home/project/clinn/miniconda/etc/profile.d/conda.sh" ]; then
        . "/mnt/home/project/clinn/miniconda/etc/profile.d/conda.sh"
    else
        export PATH="/mnt/home/project/clinn/miniconda/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
# starship is installed in the base conda env
export PATH="$PATH:/mnt/home/project/clinn/miniconda/bin:"
eval "$(starship init bash)"
conda activate tf212_311
#conda activate torch

alias lf='ranger'
alias pylint='pylint --errors-only'
alias gd='git diff'
alias gp='git push'
alias gl='git log --graph --all --pretty=format:"%C(auto)%h%C(reset) %ad %C(auto)%d%C(reset) %s" --date=format:"%b %d, %Y"'
alias gsu='git status -uno'
alias gs='git status'

export HISTSIZE=10000
export SAVEHIST=1000000
export PATH="$PATH:/mnt/home/project/clinn/.local/bin"
