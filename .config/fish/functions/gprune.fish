# Defined via `source`
function gprune --description 'prune unused branches(merged, deleted)'
  git pull --prune;
  git branch --merged | grep usagiga | xargs git branch -d $argv;
end
