# Directory
function prompt_directory --description 'Print directory with vim indications'
	# Vim mode as directory color
	set -l prompt_with_vim_color (
		switch $fish_bind_mode
			case insert
				set_color --bold blue
			case '*'
				set_color --bold brblack
		end
		echo -n (prompt_pwd)
		set_color normal
	)

	echo -n $prompt_with_vim_color
end
