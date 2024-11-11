if [[ -x "$(command -v fastfetch)" ]]; then
  fastfetch
elif [[ -x "$(command -v neofetch)" ]]; then
  neofetch
fi

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=60"
