# Defined in - @ line 1
function gres --wraps='git restore --staged .' --wraps='git restore --staged .; git status' --description 'alias gres git restore --staged .; git status'
  git restore --staged .; git status $argv;
end
