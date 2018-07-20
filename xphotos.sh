NUMPHOTOS=$1
for ((i=1; i<=$NUMPHOTOS; i++))
do
	raspistill -t 100 -o z$i.jpg
done