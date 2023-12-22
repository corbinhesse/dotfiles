# Actual time
function prompt_time -d "Display the current time"
	set -l prefix ' '

	set_color brblack
	set -l date_time (date +%H:%M)
	echo -n $prefix$date_time
end
