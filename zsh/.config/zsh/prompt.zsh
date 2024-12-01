if [[ -x "$(command -v fastfetch)" ]]; then
  [[ $TERM =~ "tmux" ]] || fastfetch
elif [[ -x "$(command -v neofetch)" ]]; then
  [[ $TERM =~ "tmux" ]] || neofetch
fi

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=60"
