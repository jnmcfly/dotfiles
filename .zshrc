export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git git-extras kubectl fzf z aws nmap kube-ps1)
KUBE_PS1_SYMBOL_ENABLE=false
KUBE_PS1_SUFFIX=""
KUBE_PS1_PREFIX=""
KUBE_PS1_SEPARATOR=" "
KUBE_PS1_DIVIDER=":"
KUBE_PS1_CTX_COLOR="yellow"
KUBE_PS1_NS_COLOR="cyan"

source $ZSH/oh-my-zsh.sh

alias install='sudo apt install'
alias more='less'
alias c='clear && clear'
alias updateall='sudo apt update && sudo apt upgrade -y'
alias grep='grep --color=auto'
alias mkdir='mkdir -p -v'
alias ..='cd ..'
alias yalla='kitty --session ~/session.test'
alias install='sudo pacman -Sy'
alias update='sudo pacman -Syyu'
alias vim='lvim'
alias vi='lvim'
alias nvim='lvim'
autoload -U +X bashcompinit && bashcompinit

function _sourceFile() {
    if [ -f $1 ]; then
        source $1
    fi
}

_sourceFile "/usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh"
_sourceFile "/usr/share/z/z.sh"

export EDITOR="lvim"
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:${HOME}/go/bin:$PATH"
export KUBECONFIG="$KUBECONFIG:$HOME/.kube/config"
export GOPATH="${HOME}/go"

if [[ $(kcgc | wc -l) > 1 ]]; then
    kubeon -g
else
    kubeoff -g
fi


RPROMPT='$(kube_ps1)'
