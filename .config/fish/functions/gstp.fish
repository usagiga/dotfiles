# Defined in - @ line 1
function gstp --wraps='git stash pop' --wraps='git stash pop; git restore --staged *' --wraps='git stash pop; git restore --staged .' --description 'alias gstp git stash pop; git restore --staged .'
  git stash pop; git restore --staged . $argv;
end
