cpu_ipunt=$1
num_cpu=$(grep 'processor' /proc/cpuinfo | wc -l)


# check for a numeric value, exit with an error status
# reject input is less than 1
if [[ ! $1 =~ ^[0-9]+$ ]]; then
	echo "Error - non-numeric input is invalid. Please supply an interger value"
	exit 1
elif [ $1 -lt 1 ]; then
	echo "Please supply more cores, 0 is an invalid input"
	exit 1
fi

# check if number of CPUs is greater or equal to supplied amount
if [ $num_cpu -ge $1 ]; then
	echo "Enough cores have been found"
	exit 0
else
	echo "Error - Exceeded max number of cores!"
	exit 1
fi
