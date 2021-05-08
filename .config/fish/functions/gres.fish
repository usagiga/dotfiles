# Defined in - @ line 1
function gres --wraps='git restore --staged' --description 'alias gres git restore --staged'
  git restore --staged $argv;
end
