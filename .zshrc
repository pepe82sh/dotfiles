if [[ -x "$(command -v fastfetch)" ]]; then
  fastfetch
elif [[ -x "$(command -v neofetch)" ]]; then
  neofetch
fi

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# For local special antigen config use .antigenrc.pre.local
[[ ! -f ~/.antigenrc.pre.local ]] || source ~/.antigenrc.pre.local

# use antigen for plugin management
source ${HOME}/.rcscripts/antigen.zsh

# Load antigen configurations
antigen init ${HOME}/.antigenrc


export FZF_COMPLETION_TRIGGER=',,'
export FZF_DEFAULT_OPTS='--preview '"'"'[[ $(file --mime {}) =~ binary ]] && echo {} is a binary file || (bat --theme=TwoDark --style=numbers --color=always {}) 2> /dev/null | head -500'"'"

alias dotfiles='git --git-dir=${HOME}/.dotfiles/ --work-tree=${HOME}'

if [[ -x "$(command -v nvim)" ]]; then
  alias vi=nvim
  alias vim=nvim
  export EDITOR=nvim
  export VISUAL=nvim
elif [[ -x "$(command -v vim)" ]]; then
  alias vi=vim
  export EDITOR=vim
  export VISUAL=vim
fi

if [[ -x "$(command -v lazygit)" ]]; then
  alias lg=lazygit
fi

[[ -x "$(command -v foo)" && -f ~/.fzf.zsh ]] && source ~/.fzf.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# For local customizations, use .zshrc.local
[[ ! -f ~/.zshrc.local ]] || source ~/.zshrc.local

# Enable vim mode
bindkey -v

