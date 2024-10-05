#!/bin/bash

#####################################
# Author : Kushal
# Date : 02/10/2024
#
# conditional satements and loops 
#
# version : v1
####################################
#
#

#set -x
set -e

a=4
b=20

#if else condition

if [ $a -gt $b ]
then
	echo "'a' is greater than 'b'"
else
	echo "'b' is greater than 'a'"
fi


# for loop

for i in 1 2 3 4 5
do
	echo "Number : $i"
done

# for loop

for i in {1..20}
do
 if [ $((i % 2)) -eq 0 ]
 then
  echo "Number : $i"
 fi
done

# for loop another way

for ((i=1; i<20; i++))
do
	if ((i % 2 == 0))
	then
		echo "Good No.: $i"
	fi
done

# INTERVIEW QUE 
#-----------------------------------------

#1) print number devided by 3,5 but not 15
echo "1) print number devided by 3,5 but not 15"

for ((i=1;i<20;i++))
do
	if ((i % 3 == 0 || i % 5 == 0 && i % 15 != 0))
	then
		echo "Special Number : $i"
	fi
done

# 2) count "s" in word "mississipi"

echo "___________________________________________________________"
echo "2) count "s" in word "mississipi""

x="mississipi"
grep -o "s" <<<"$x" | wc -l
