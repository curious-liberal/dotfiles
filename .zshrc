# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Vim keybinding thing
bindkey -v

# PROMPT
PROMPT="%{$fg[magenta]%}%n%{$reset_color%} in %{$fg[green]%}%1~%{$reset_color%} %{$fg[yellow]%}λ%{$reset_color%} "

# Alias

alias sudo="doas"
alias vpnon="mullvad lockdown-mode set on && mullvad connect && mullvad status"
alias vpnoff="mullvad lockdown-mode set off && mullvad disconnect && mullvad status"
alias cmatrix="cmatrix -m"
