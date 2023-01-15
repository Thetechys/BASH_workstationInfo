#!/bin/bash


dt=$(date +%Y%m%d_%H%M)
touched=hostmachine_info_$dt.txt

touch $touched

#free --mega >> $touched


function _grep_df(){

	df -H | grep 'Filesystem\|sda*'
        echo $'\n'	
	free --mega
	echo $'\n'
	lscpu
}

_grep_df >> $touched

#lscpu >> $touched


