# Jobs
function prompt_jobs --description 'Print jobs'
	set jobs_amount (jobs | wc -l | xargs)

  # Exit if no jobs
	if test $jobs_amount -eq 0
		return
	end

  set_color yellow
  echo -n ' ﹪'$jobs_amount
end
