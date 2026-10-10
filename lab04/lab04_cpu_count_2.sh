cpu_ipunt=$1
num_cpu=$(grep 'processor' /proc/cpuinfo | wc -l)


if [ -z $1]; then
	echo "You didn't pass any parameters to $0"
	exit 1
else
	echo "You passed in $1 to $0"
fi

if [ $num_cpu -ge $1 ]; then
	echo "Enough cores have been found"
else
	echo "Error - Exceeded max number of cores!"
fi
