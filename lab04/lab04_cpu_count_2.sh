cpu_ipunt=$1
num_cpu=$(grep 'processor' /proc/cpuinfo | wc -l)

# Function containing the usage message of how to use the script
usage_mes() {
	echo "To use this script, the user must supply a value after entering the command to run the script"
	echo "Example: $0 <supplied integer value from user>"
}

# check that the correct value has been supplied
if [ -z "$1" ]; then
	usage_mes
	exit 1
else
	echo "You passed in $1 to $0"
fi

# check that user supplied cores are greater or equal to the number of cores of the machine
# display error if number of cores exceeded
if [ $num_cpu -ge $1 ]; then
	echo "Enough cores have been found"
else
	echo "Error - Exceeded max number of cores!"
	exit 1
fi
