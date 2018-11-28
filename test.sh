#/bin/bash

#npm start &

#Endless loop start!
while [ 1 ]
do

#Check for new commits.
#	git pull --dry-run | grep -q -v 'Already up-to-date.' && changed=1
	if [[ `git status --porcelain` ]]
	then
	echo "New commit has happened. Updating!"
	git pull
	else
	echo "No new changes."
	fi
	sleep 20
done
