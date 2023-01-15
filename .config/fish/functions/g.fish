# Defined in - @ line 1
function g --description 'list and cd ghq dirs'
	set SELECTED_DIR (ghq root)/(ghq list | peco)
    if [ -z $SELECTED_DIR ]
        return 0
    end
    cd $SELECTED_DIR
end
