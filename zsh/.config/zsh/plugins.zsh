ANTIDOTESRC="${ZDOTDIR:-~}/.antidote"

if [ ! -d "$ANTIDOTESRC" ]; then
  git clone --depth=1 https://github.com/mattmc3/antidote.git "${ANTIDOTESRC}"
fi

# source antidote
source "${ANTIDOTESRC}/antidote.zsh"

# initialize plugins statically with ${ZDOTDIR:-~}/.zsh_plugins.txt
antidote load
