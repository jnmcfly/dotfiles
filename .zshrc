# oh-my-zsh stuff
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(archlinux git git-extras kubectl fzf terraform z kube-ps1)
DISABLE_UNTRACKED_FILES_DIRTY="true"
COMPLETION_WAITING_DOTS="true"
DISABLE_AUTO_TITLE="true"
source $ZSH/oh-my-zsh.sh


# kube-ps1 stuff
KUBE_PS1_SYMBOL_ENABLE=false
KUBE_PS1_SUFFIX=""
KUBE_PS1_PREFIX=""
KUBE_PS1_SEPARATOR=" "
KUBE_PS1_DIVIDER=":"
KUBE_PS1_CTX_COLOR="yellow"
KUBE_PS1_NS_COLOR="cyan"

# alias stuff
alias more='less'
alias c='clear && clear'
alias grep='grep --color=auto'
alias mkdir='mkdir -p -v'
alias ..='cd ..'
alias vim='lvim'
alias vi='lvim'
alias nvim='lvim'
alias k='kubectl'

# autocompletion stuff
autoload -U +X compinit && compinit
autoload -U +X bashcompinit && bashcompinit

function _sourceFile() {
    if [ -f $1 ]; then
        source $1
    fi
}

_sourceFile "/usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh"
_sourceFile "/usr/share/z/z.sh"

# exports
export EDITOR="lvim"
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:${HOME}/go/bin:$PATH"
export KUBECONFIG="$KUBECONFIG:$HOME/.kube/config"
export GOPATH="${HOME}/go"
export MOOD="nature"


# if [[ $(kcgc | wc -l) > 1 ]]; then
#     kubeon -g
#     RPROMPT='$(kube_ps1)'
# else
#     kubeoff -g
# fi


