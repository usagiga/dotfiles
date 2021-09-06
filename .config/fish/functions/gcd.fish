# Defined via `source`
function gcd --wraps='cd (git rev-parse --show-toplevel)' --description 'alias gcd cd (git rev-parse --show-toplevel)'
  cd (git rev-parse --show-toplevel) $argv; 
end
