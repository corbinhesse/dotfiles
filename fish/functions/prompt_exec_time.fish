# Execution time
function prompt_exec_time -d "Display the execution time of the last command"
	set -l command_duration "$CMD_DURATION"
	set -l elapsed_time_threshold 1
	set -l prefix ' ('
	set -l suffix ')'
	set -l color brblack

	if test -n "$command_duration" -a "$command_duration" -gt (math "$elapsed_time_threshold * 1000")
		set -l human_exec_duration (echo $command_duration | util_human_time)
		set_color $color
		echo -n $prefix$human_exec_duration$suffix
	end
end
