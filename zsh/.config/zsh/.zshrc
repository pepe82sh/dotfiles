ZSHRCD="${HOME}/.zshrc.d"

source "${ZDOTDIR}/settings.zsh"
source "${ZDOTDIR}/exports.zsh"
source "${ZDOTDIR}/aliases.zsh"
source "${ZDOTDIR}/plugins.zsh"
source "${ZDOTDIR}/prompt.zsh"

# Source all zsh files in ~/.zshrc.d
if [ -d "$ZSHRCD" ]; then
  for file in $ZSHRCD/*.zsh; do
    source "$file"
done
fi

#[[ -x "$(command -v foo)" && -f ~/.fzf.zsh ]] && source ~/.fzf.zsh

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
