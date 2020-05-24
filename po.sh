count=1

while [ $count -lt 11 ]

do
   kubectl run adhoc$count --image=alpine --command ping 8.8.8.8 --restart Never

count=`expr $count + 1 `

done