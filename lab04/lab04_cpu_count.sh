cpu_ipunt=$1
num_cpu=$(grep 'processor' /proc/cpuinfo | wc -l)


if [ $num_cpu -ge $1 ]; then
	echo "Enough cores have been found"
else
	echo "Error - Exceeded max number of cores!"
fi
