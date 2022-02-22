# Second line character
function prompt_char --description 'Print character'
	# Suffix
	set -l space (
		set_color normal
		echo -n ' '
	)

	# Exit code
	if test $exit_code -eq 0
		set_color brblack
	else
		set_color red
	end

	# Character
	set -l character (
		switch $fish_bind_mode
			case insert
				echo -n '▸'
			case '*'
				echo -n ':'
		end
	)

	echo -n $character$space
end
