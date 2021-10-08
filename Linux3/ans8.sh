clear
echo -n "number of elements enter:"
read n
echo enter elements
for((i=1;i<=$n;i++))
do
echo -n "enter element $i :"
read arr[$i]
done
echo -n "enter the element you want to search:"
read item
lb=1
ub=$n
while [ $lb -le $ub ]
do
x=`expr $ub + $lb`
mid=`expr $x / 2`
if [ $item -lt ${arr[$mid]} ]
then
ub=`expr $mid - 1`
elif [ $item -gt ${arr[$mid]} ]
then
lb=`expr $mid + 1`
elif [ $item -eq ${arr[$mid]} ]
then
echo $item found at position $mid 
break
fi
done
if [ $lb -gt $ub ]
then
 echo not found
fi
