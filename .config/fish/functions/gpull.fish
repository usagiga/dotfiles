function gpull --wraps='git pull origin (git rev-parse --abbrev-ref HEAD)' --description 'alias gpull git pull origin (git rev-parse --abbrev-ref HEAD)'
  git pull origin (git rev-parse --abbrev-ref HEAD) $argv; 
end
