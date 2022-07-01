function gcc --wraps='git commit --amend -m' --description 'alias gcc git commit --amend -m'
  git commit --amend -m $argv; 
end
