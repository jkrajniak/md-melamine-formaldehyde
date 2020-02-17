#!/bin/bash
i="1"
while [ $i -lt 10 ]  
do
echo "$i  `cat step_00$i/A-A.conv`" >> A-A.conv 
echo "$i  `cat step_00$i/A-B.conv`" >> A-B.conv 
echo "$i  `cat step_00$i/B-B.conv`" >> B-B.conv 
i=$[$i+1]
done
while [ $i -lt 27 ]  
do
echo "$i  `cat step_0$i/A-A.conv`" >> A-A.conv 
echo "$i  `cat step_0$i/A-B.conv`" >> A-B.conv 
echo "$i  `cat step_0$i/B-B.conv`" >> B-B.conv 
i=$[$i+1]
done
#while [ $i -lt 253 ]  
#do
#echo "$i  `cat step_$i/A-B.conv`" >> A-B.conv 
#i=$[$i+1]
#done

