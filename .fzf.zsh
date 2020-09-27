# fzf path
# --------
case $(uname) in
Darwin)
    fzf_scriptdir=/usr/local/opt/fzf/shell
    ;;
FreeBSD)
    fzf_scriptdir=/usr/local/share/examples/fzf/shell
    ;;
esac

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "${fzf_scriptdir}/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "${fzf_scriptdir}/key-bindings.zsh"
