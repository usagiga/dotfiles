function gget --wraps='ghq get https://github.com/(gh repo list --no-archived | peco | cut -f 1)' --description 'alias gget ghq get https://github.com/(gh repo list --no-archived | peco | cut -f 1)'
  ghq get https://github.com/(gh repo list --no-archived | peco | cut -f 1) $argv; 
end
