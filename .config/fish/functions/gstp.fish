# Defined in - @ line 1
function gstp --wraps='git stash pop' --description 'alias gstp git stash pop'
  git stash pop $argv;
end
