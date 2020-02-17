#!/bin/bash
i="1"
while [ $i -lt 10 ]  
do
echo "$i  `cat step_00$i/A-A.conv`" >> A-A.conv 
echo "$i  `cat step_00$i/A-B.conv`" >> A-B.conv 
echo "$i  `cat step_00$i/A-C.conv`" >> A-C.conv 
echo "$i  `cat step_00$i/A-D.conv`" >> A-D.conv 
echo "$i  `cat step_00$i/A-E.conv`" >> A-E.conv 
echo "$i  `cat step_00$i/A-F.conv`" >> A-F.conv 
echo "$i  `cat step_00$i/A-G.conv`" >> A-G.conv 
echo "$i  `cat step_00$i/B-B.conv`" >> B-B.conv 
echo "$i  `cat step_00$i/B-C.conv`" >> B-C.conv 
echo "$i  `cat step_00$i/B-D.conv`" >> B-D.conv 
echo "$i  `cat step_00$i/B-E.conv`" >> B-E.conv 
echo "$i  `cat step_00$i/B-F.conv`" >> B-F.conv 
echo "$i  `cat step_00$i/B-G.conv`" >> B-G.conv 
echo "$i  `cat step_00$i/C-C.conv`" >> C-C.conv 
echo "$i  `cat step_00$i/C-D.conv`" >> C-D.conv 
echo "$i  `cat step_00$i/C-E.conv`" >> C-E.conv 
echo "$i  `cat step_00$i/C-F.conv`" >> C-F.conv 
echo "$i  `cat step_00$i/C-G.conv`" >> C-G.conv 
echo "$i  `cat step_00$i/D-D.conv`" >> D-D.conv 
echo "$i  `cat step_00$i/D-E.conv`" >> D-E.conv 
echo "$i  `cat step_00$i/D-F.conv`" >> D-F.conv 
echo "$i  `cat step_00$i/D-G.conv`" >> D-G.conv 
echo "$i  `cat step_00$i/E-E.conv`" >> E-E.conv 
echo "$i  `cat step_00$i/E-F.conv`" >> E-F.conv 
echo "$i  `cat step_00$i/E-G.conv`" >> E-G.conv 
echo "$i  `cat step_00$i/F-F.conv`" >> F-F.conv 
echo "$i  `cat step_00$i/F-G.conv`" >> F-G.conv 
echo "$i  `cat step_00$i/G-G.conv`" >> G-G.conv 
i=$[$i+1]
done
while [ $i -lt 50 ]  
do
echo "$i  `cat step_0$i/A-A.conv`" >> A-A.conv 
echo "$i  `cat step_0$i/A-B.conv`" >> A-B.conv 
echo "$i  `cat step_0$i/A-C.conv`" >> A-C.conv 
echo "$i  `cat step_0$i/A-D.conv`" >> A-D.conv 
echo "$i  `cat step_0$i/A-E.conv`" >> A-E.conv 
echo "$i  `cat step_0$i/A-F.conv`" >> A-F.conv 
echo "$i  `cat step_0$i/A-G.conv`" >> A-G.conv 
echo "$i  `cat step_0$i/B-B.conv`" >> B-B.conv 
echo "$i  `cat step_0$i/B-C.conv`" >> B-C.conv 
echo "$i  `cat step_0$i/B-D.conv`" >> B-D.conv 
echo "$i  `cat step_0$i/B-E.conv`" >> B-E.conv 
echo "$i  `cat step_0$i/B-F.conv`" >> B-F.conv 
echo "$i  `cat step_0$i/B-G.conv`" >> B-G.conv 
echo "$i  `cat step_0$i/C-C.conv`" >> C-C.conv 
echo "$i  `cat step_0$i/C-D.conv`" >> C-D.conv 
echo "$i  `cat step_0$i/C-E.conv`" >> C-E.conv 
echo "$i  `cat step_0$i/C-F.conv`" >> C-F.conv 
echo "$i  `cat step_0$i/C-G.conv`" >> C-G.conv 
echo "$i  `cat step_0$i/D-D.conv`" >> D-D.conv 
echo "$i  `cat step_0$i/D-E.conv`" >> D-E.conv 
echo "$i  `cat step_0$i/D-F.conv`" >> D-F.conv 
echo "$i  `cat step_0$i/D-G.conv`" >> D-G.conv 
echo "$i  `cat step_0$i/E-E.conv`" >> E-E.conv 
echo "$i  `cat step_0$i/E-F.conv`" >> E-F.conv 
echo "$i  `cat step_0$i/E-G.conv`" >> E-G.conv 
echo "$i  `cat step_0$i/F-F.conv`" >> F-F.conv 
echo "$i  `cat step_0$i/F-G.conv`" >> F-G.conv 
echo "$i  `cat step_0$i/G-G.conv`" >> G-G.conv 
i=$[$i+1]
done
