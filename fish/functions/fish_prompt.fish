# Main prompt
function fish_prompt --description 'Write out the prompt'
	set -g exit_code $status
	set -g fish_prompt_pwd_dir_length 0

	echo -n -s \n\
		(prompt_directory)\
		(prompt_jobs)\
		(prompt_git)\
		(prompt_node)\
		(prompt_time)\
		(prompt_exec_time)\
		\n(prompt_char)
end
