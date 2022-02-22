set grc_completion (brew --prefix)/etc/grc.fish

if test -e $grc_completion
	source $grc_completion
end
