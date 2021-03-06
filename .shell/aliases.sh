# Aliases
alias rvmchef='eval "$(chef shell-init zsh)"'
alias rake='noglob rake'
alias jq='noglob jq'
alias tf='terraform'
alias tfws='terraform workspace select'
alias kc='kubectl'
alias barca='kubectl --context barca'
alias kcn='kubectl --context cluster-1-nonprod'
alias kcp='kubectl --context cluster-1-prod'
alias kcbd='kubectl --context bd-prod-1'
alias awsp='export AWS_PROFILE=prod-datalens'
alias awsn='export AWS_PROFILE=nonprod-datalens'
alias awspp='export AWS_PROFILE=prod-proton'
alias awspn='export AWS_PROFILE=nonprod-proton'
alias awsdv='export AWS_PROFILE=prod-dsf-datavision'
proton() { kubectl config use-context prod:proton; source ~/.shell/secrets.proton; }
datalens() { kubectl config use-context prod:datalens; source ~/.shell/secrets.datalens }
garfunkel() { kubectl exec -it $(kubectl get pod -l app=garfunkel -o jsonpath="{.items[0].metadata.name}") bash; }
