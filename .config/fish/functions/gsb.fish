# Defined via `source`
function gsb --wraps=git\ switch\ \(git\ branch\ \|\ sort\ -b\ \|\ peco\ \|\ sed\ -E\ \'s/\^\\\*\?\ +//g\'\) --description alias\ gsb\ git\ switch\ \(git\ branch\ \|\ sort\ -b\ \|\ peco\ \|\ sed\ -E\ \'s/\^\\\*\?\ +//g\'\)
  git switch (git branch | sort -b | peco | sed -E 's/^\*? +//g') $argv; 
end
