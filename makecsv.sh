rm /home/pi/camcv/photos.csv
NUM=$(ls | grep "tom" | wc -l)
for ((i=1; i<=$NUM; i++))
do
	echo "./photos/tom$i.jpg;1" >> /home/pi/camcv/photos.csv
done

NUM=$(ls | grep "steph" | wc -l)
for ((i=1; i<=$NUM; i++))
do
	echo "./photos/steph$i.jpg;3" >> /home/pi/camcv/photos.csv
done