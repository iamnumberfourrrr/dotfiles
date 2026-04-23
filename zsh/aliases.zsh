alias g='git'
alias rmsso='rm -rf ~/.aws/sso'
alias ll='eza -1 -l --hyperlink --icons=always'
alias lla='eza -1 -l --hyperlink --icons=always -a'
alias gcm='git checkout main && git pull'
alias gcmb='git checkout main && git pull && git checkout -'
alias vim='nvim'
alias git-unlock='rm -f .git/index.lock'


# psfn
alias testToken='go run ./cmd/utils/auth-token/main.go --id bsokocj8vi3obo2orh60 --email joesph.degonia@acme.com --account-id brqab5j8vi3l1q7kcmtg'
alias devtestlogin='aws sso login --profile devtest && export AWS_PROFILE=devtest'
alias staginglogin='aws sso login --profile staging && export AWS_PROFILE=staging'
alias gcb='function _gcb() {
  local prefix=${1:-feat}
  local ticket_name=$2

  if [[ -z "$ticket_name" ]]; then
    echo "Usage: gcb [prefix] <ticket_name>"
    return 1
  fi

  git checkout -b "${prefix}/tunguyen/${ticket_name}"
}; _gcb'
