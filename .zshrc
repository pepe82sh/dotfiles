# use antigen for plugin management
source ${HOME}/.rcscripts/antigen.zsh

# Load antigen configurations
antigen init ${HOME}/.antigenrc


export FZF_COMPLETION_TRIGGER=',,'
export FZF_DEFAULT_OPTS='--preview '"'"'[[ $(file --mime {}) =~ binary ]] && echo {} is a binary file || (bat --theme=TwoDark --style=numbers --color=always {}) 2> /dev/null | head -500'"'"

prompt_context(){
  if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
    prompt_segment black default "%(!.%{%F{yellow}%}.)$HOST"
  fi
}

alias dotfiles='git --git-dir=${HOME}/.dotfiles/ --work-tree=${HOME}'

export EDITOR=vim
export VISUAL=vim

[[ -x "$(command -v foo)" && -f ~/.fzf.zsh ]] && source ~/.fzf.zsh

