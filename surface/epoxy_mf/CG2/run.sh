#!/bin/bash
i="1"
while [ $i -lt 10 ]  
do
echo "$i  `cat step_00$i/E-E.conv`" >> E-E.conv 
echo "$i  `cat step_00$i/E-F.conv`" >> E-F.conv 
echo "$i  `cat step_00$i/F-F.conv`" >> F-F.conv 
echo "$i  `cat step_00$i/G-G.conv`" >> G-G.conv 
i=$[$i+1]
done
while [ $i -lt 58 ]  
do
echo "$i  `cat step_0$i/E-E.conv`" >> E-E.conv 
echo "$i  `cat step_0$i/E-F.conv`" >> E-F.conv 
echo "$i  `cat step_0$i/F-F.conv`" >> F-F.conv 
echo "$i  `cat step_0$i/G-G.conv`" >> G-G.conv 
i=$[$i+1]
done
