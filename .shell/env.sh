# Editor
export EDITOR=vi
# AWS
export AWS_REGION="us-west-2"
export AWS_DEFAULT_REGION="us-west-2"
# tab completion for awscli
source /usr/local/share/zsh/site-functions/_aws
# Path
export PATH="/usr/local/opt/openssl/bin:/usr/local/opt/curl/bin:/Users/xjs5/bin:/usr/local/bin:$PATH"
# Proxy settings
#. ~/bin/proxy
# Kapacitor
export KAPACITOR_URL=http://datalens.kapacitor.prod.datalens.r53.nordstrom.net:80
# for helm
export TILLER_NAMESPACE=datalens
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
# fzf via Homebrew
if [ -e /usr/local/opt/fzf/shell/completion.zsh ]; then
  source /usr/local/opt/fzf/shell/key-bindings.zsh
  source /usr/local/opt/fzf/shell/completion.zsh
fi

# fzf + ag configuration
if [[ -x fzf ]] && [[ -x ag ]]; then
  export FZF_DEFAULT_COMMAND='ag --nocolor -g ""'
  export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
  export FZF_ALT_C_COMMAND="$FZF_DEFAULT_COMMAND"
  export FZF_DEFAULT_OPTS='
  --color fg:242,bg:236,hl:65,fg+:15,bg+:239,hl+:108
  --color info:108,prompt:109,spinner:108,pointer:168,marker:168
  '
fi
export PATH="$PATH:$HOME/.rvm/bin"
