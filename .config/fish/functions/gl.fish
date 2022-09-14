function gl --wraps='git log --oneline' --wraps='git log --oneline -n 10' --description 'alias gl git log --oneline -n 10'
  git log --oneline -n 10 $argv; 
end
