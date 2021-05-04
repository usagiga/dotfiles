# Defined via `source`
function gc --wraps='git commit -m' --description 'alias gc git commit -m'
  git commit -m $argv; 
end
