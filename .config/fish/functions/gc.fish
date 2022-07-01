function gc --wraps='git commit -m' --wraps='git commit --allow-empty -m' --description 'alias gc git commit --allow-empty -m'
  git commit --allow-empty -m $argv; 
end
