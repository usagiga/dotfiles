# Defined in - @ line 1
function gst --wraps='git stash' --wraps='git add .; git stash' --description 'alias gst git add .; git stash'
  git add .; git stash $argv;
end
