function alias_auto
  chmod +x $argv[2]
  alias $argv[1] (pwd)/$argv[2]
  funcsave $argv[1]
end
