#!/bin/bash

#1) What is the most popular pair of heroes (often appearing together in the comics)?

# we count the number of occurrences, sort in descending order and finally extract the first row
echo "The most popular pair of heroes is:" $(sort hero-network.csv | uniq -c | sort -r | head -1) 

#2) Number of comics per hero?
echo "Number of comics per hero:"
sort edges.csv | cut -d, -f1 | uniq -c | sort -r | head -10 

#3) The average number of heroes in comics? 

tot_hero=$(cut -d, -f3 edges.csv | wc -l)
tot_comics=$(cut -d, -f3 edges.csv | sort | uniq -c | sort | wc -l)

echo "The average number of heroes in comics: " $(($tot_hero/$tot_comics))

