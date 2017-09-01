function countfiles {
	echo "How many files are there in the directory"
	true_file_count=$(ls --file-type *.* | wc -l)
	exit_loop=0
	while [[ $exit_loop -eq 0 ]]
	do
		read user_file_count
		if [[ $user_file_count -eq $true_file_count ]]
		then
			echo "Correct!"
			exit_loop=1
		elif [[ $user_file_count -lt $true_file_count ]]
		then
			echo "There are more files, try again"
		else
			echo "There are less files, try again"
		fi
	done
}
countfiles
