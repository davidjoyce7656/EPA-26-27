cpu_ipunt=$1
num_cpu=$(grep 'processor' /proc/cpuinfo | wc -l)
website=$2

# Check if user has supplied a parameter
# Validate that user has supplied an integer value 
if [ -z "$cpu_input" ]; then
	echo "You didn't pass any parameters to $0"
	exit 1
elif [[ ! $cpu_input =~ ^[0-9]+$ ]]; then
	echo "You did not supply an integer value. Please suplly a valid integer!"
	exit 1
else
	echo "You passed in $1 to $0"
fi


# validate user has supplied a website URL
# check whether the machines available cores are greater than or equal to the users requested minimum
# fetch date and data for website with curl

# notify user if the requested cores exceed the available cores  
if [ -z "$website" ]; then
	echo "You didn't supply a website!"
	exit 1
fi
if [ $num_cpu -ge $cpu_input ]; then
	echo "Enough cores have been found"
	date
	curl "$website"
else
	echo "Error - Exceeded max number of cores!"
	exit 1
fi



echo "The first command I choose to display was the date and time, which can be useful to display when the script was executed"
echo "The second command I chose was the curl command, as it is useful for retrieving raw HTML directly from a website and allowing me to examine the webpages source code"
