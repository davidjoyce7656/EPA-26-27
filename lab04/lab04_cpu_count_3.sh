cpu_ipunt=$1
num_cpu=$(grep 'processor' /proc/cpuinfo | wc -l)
website=$2


if [ -z $1 ]; then
	echo "You didn't pass any parameters to $0"
	exit 1
else
	echo "You passed in $1 to $0"
fi

if [ -z $2 ]; then
	echo "You didn't supply a website!"
else
	curl $2

fi

if [ $num_cpu -ge $1 ]; then
	echo "Enough cores have been found"
else
	echo "Error - Exceeded max number of cores!"
fi

echo "The first command I choose to display was the date and time, which can be useful to display when the script was executed"
echo "The second command I chose was the curl command, as it is useful for retrieving raw HTML directly from a website and allowing me to examine the webpages source code"
