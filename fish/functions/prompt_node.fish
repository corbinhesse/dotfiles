# node/fnm version
function prompt_node --description 'Print node version'
	# Exit if there is not a package.json file
	if not test -e ./package.json
		return
	end

	set -l prefix ' '
	set -l node_system_version (string replace -a 'v' '' (node -v))
	set -l node_project_version ''

	# If `.nvmrc` then set project version
	if test -f ./\.nvmrc
		set node_project_version (string replace -a 'v' '' (cat ./\.nvmrc))
	end

	set -l node_output (
		# If there is no `.nvmrc`
		if [ "$node_project_version" = '' ]
			set_color $fish_color_teal
			echo -n $prefix$node_system_version
		else
			# When node version matches project
			if string match -eq $node_project_version $node_system_version
				set_color $fish_color_teal
				echo -n $prefix$node_system_version'rc'
			else
				set_color red
				echo -n $prefix$node_project_version
			end
		end
	)

	echo -n $node_output
end
