# Defined in - @ line 1
function g --description 'alias g cd (ghq root)/(ghq list | peco)'
	cd (ghq root)/(ghq list | peco) $argv;
end
