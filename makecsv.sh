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

#change limits of for loops to select how many of 400 sample photos are used for 'others'
for ((i=0; i<=0; i++))
do
	for ((j=0; j<=5; j++))
	do
		for ((k=0; k<=9; k++))
		do

			if [ ! $i -eq 0 ] || [ ! $j -eq 0 ] || [ ! $k -eq 0 ]; then	
				echo "./photos/$i$j$k.jpg;0" >> /home/pi/camcv/photos.csv
			fi
		done
	done
done


