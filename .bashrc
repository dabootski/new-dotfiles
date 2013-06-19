
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

function pr {
  echo "Pushing and opening a new pull request ... "
  git push origin && open https://github.com/`git config --global github.user`/`basename $(git remote show -n origin | grep Push | cut -d: -f2-)`/pull/new/`git rev-parse --abbre    v-ref HEAD`
}

