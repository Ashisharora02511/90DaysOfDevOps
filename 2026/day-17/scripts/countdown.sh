read -p "Enter num: " num

while  [ $num -ge 0 ]
do
        echo $num
        num=$((num-1))
done

echo "Finish"
