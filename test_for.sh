for i in "$*"
	do
		echo "参数：$i"
	done
x=1

for i in "$@"
	do
		echo "参数$x：$i"
		x=$(($x+1))
	done
