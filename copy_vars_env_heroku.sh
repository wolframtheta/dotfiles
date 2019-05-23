if [[ $1 ]]
then
	heroku config -s -a $1 > .env
	cat .env
else
	echo "You must pass a name of the app"
fi
