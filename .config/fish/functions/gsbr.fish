function gsbr --wraps=git\ switch\ \(gb\ \|\ grep\ -e\ \'^\ \*remotes\'\ \|\ peco\ \|\ sed\ -E\ \'s/^\ +remotes\\/origin\\///g\'\) --description alias\ gsbr\ git\ switch\ \(gb\ \|\ grep\ -e\ \'^\ \*remotes\'\ \|\ peco\ \|\ sed\ -E\ \'s/^\ +remotes\\/origin\\///g\'\)
  git switch (gb | grep -e '^ *remotes' | peco | sed -E 's/^ +remotes\/origin\///g') $argv; 
end
