# Log in to an AWS SSO profile and make it the active profile for this shell.
# Usage: aws_sso_login <profile>
aws_sso_login() {
  local profile="$1"
  if [[ -z "$profile" ]]; then
    echo "usage: aws_sso_login <profile>" >&2
    return 1
  fi

  aws sso login --profile "$profile" || return
  export AWS_PROFILE="$profile"
  aws sts get-caller-identity --profile "$profile"
}

alias aws-ptx-staging='aws_sso_login ptx-staging'
