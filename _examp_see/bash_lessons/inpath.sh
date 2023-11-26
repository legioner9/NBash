command=$1
our_path=$2
result=1
oldIFS=$IFS
IFS=":"

for directory in $our_path
do
	echo "$directory/$command"
	if [ -x "$directory/$command" ]; then
		echo "Found"
	fi
    done

IFS=$oldIFS