#!/bin/bash

JOINED="2010-03-04"
JOINED_TIMESTAMP=$(date -d $JOINED "+%s")
NOW_TIMESTAMP=$(date "+%s")

day=$JOINED_TIMESTAMP
while [ $day -le $NOW_TIMESTAMP ]
do
    date -s @$day
    echo $day > $day.txt
    git add $day.txt
    git commit -m "Haking github streak $day"
    day=$(($day + 86400))
done
