function goenv_update --wraps=goenv --description 'install latest go using goenv'
  set GOENV_VERSION (goenv install -l | peco | cut -d ' ' -f 3)
  and goenv install $GOENV_VERSION
  and goenv global $GOENV_VERSION
end
