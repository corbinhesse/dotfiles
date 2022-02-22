# Directory
function prompt_directory --description 'Print directory with vim indications'
	# Vim mode as directory color
	set -l prompt_with_vim_color (
		switch $fish_bind_mode
			case insert
				set_color blue
			case '*'
				set_color brblack
		end
		echo -n (prompt_pwd)
		set_color normal
	)

	echo -n $prompt_with_vim_color
end
