source ~/.zplug/init.zsh

bindkey -v

zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "romkatv/powerlevel10k", use:powerlevel10k.zsh-theme
zplug "momo-lab/zsh-abbrev-alias"

zplug load

abbrev-alias -g "vim=nvim"

KEYTIMEOUT=1

PATH=$HOME/miniconda3/bin:$PATH
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/rich/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/rich/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/rich/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/rich/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

