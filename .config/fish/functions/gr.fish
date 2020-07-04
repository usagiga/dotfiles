# Defined in - @ line 1
function gr --wraps='git rebase -i' --wraps='git add .; git stash; git rebase -i' --description 'alias gr git add .; git stash; git rebase -i'
  git add .; git stash; git rebase -i $argv;
end
