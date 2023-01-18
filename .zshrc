# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# use antigen for plugin management
source ${HOME}/.rcscripts/antigen.zsh

# Load antigen configurations
antigen init ${HOME}/.antigenrc


export FZF_COMPLETION_TRIGGER=',,'
export FZF_DEFAULT_OPTS='--preview '"'"'[[ $(file --mime {}) =~ binary ]] && echo {} is a binary file || (bat --theme=TwoDark --style=numbers --color=always {}) 2> /dev/null | head -500'"'"

#prompt_context(){
#  if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
#    prompt_segment black default "%(!.%{%F{yellow}%}.)$HOST"
    #prompt_segment black default "$HOST"
#  fi
#}

alias dotfiles='git --git-dir=${HOME}/.dotfiles/ --work-tree=${HOME}'

export EDITOR=vim
export VISUAL=vim

[[ -x "$(command -v foo)" && -f ~/.fzf.zsh ]] && source ~/.fzf.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# For local customizations, use .zshrc.local
[[ ! -f ~/.zshrc.local ]] || source ~/.zshrc.local

