function new_workspace
  set WORKSPACE_DIR (ghq root)/workspace/$argv
  if [ -d $WORKSPACE_DIR ]
    echo 'directory already exists' 1>&2
    exit 1
  end

  mkdir -pv $WORKSPACE_DIR
  cd $WORKSPACE_DIR

  git init -b master
end
