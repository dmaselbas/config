alias pullRepos="find ~/programming -name '.git' -type d -execdir git pull \;"
alias fetchRepos="find ~/programming -name '.git' -type d -execdir git fetch --all \;"
alias updateRepos="echo 'Fetching changes' && fetchRepos && echo 'pulling down updates' && pullRepos"

