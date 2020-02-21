# alias pumpkin_ssh='eval $(ssh-agent -s) && ssh-add ~/.ssh/id_rsa_pumpkin && export SSH_AGENT_PATH="id_rsa_pumpkin"'
# alias pumpkin_git_ssh_config='git config core.sshCommand "ssh -o IdentitiesOnly=yes -i ~/.ssh/id_rsa_pumpkin -F /dev/null"'
# alias pumpkin_git_ssh_command='export GIT_SSH_COMMAND="ssh -o IdentitiesOnly=yes -i ~/.ssh/id_rsa_pumpkin -F /dev/null"'

# alias vjm_ssh='eval $(ssh-agent -s) && ssh-add ~/.ssh/id_rsa_vjm && export SSH_AGENT_PATH="id_rsa_vjm"'
alias vjm_git_ssh_config='git config core.sshCommand "ssh -o IdentitiesOnly=yes -i ~/.ssh/id_rsa_vjm -F /dev/null"'
alias vjm_git_ssh_command='export GIT_SSH_COMMAND="ssh -o IdentitiesOnly=yes -i ~/.ssh/id_rsa_vjm -F /dev/null"'

# alias pumpkin_sts_nonprod_readonly='onelogin-aws-login -C nonprod-readonly && export AWS_DEFAULT_PROFILE=pumpkin-sts-nonprod-readonly'
# alias pumpkin_sts_nonprod_admin='onelogin-aws-login -C nonprod-admin && export AWS_DEFAULT_PROFILE=pumpkin-sts-nonprod-admin'
# alias pumpkin_sts_nonprod_basicwrite='onelogin-aws-login -C nonprod-basicwrite && export AWS_DEFAULT_PROFILE=pumpkin-sts-nonprod-basicwrite'