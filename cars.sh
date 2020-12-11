#! /bin/bash
# cars.sh
# Mason Moore
echo "Type the number 1 to enter a new car."
echo "Type the number 2 to display the list of cars."
echo "Type the number 3 to quit and exit the program."
read -r input
while [ "$input" -lt "3" ]
do
	case "$input" in
		"1") echo "Enter the cars year."
		read -r year
		echo "Enter the cars make."
		read -r make
		echo "Enter the cars model."
		read -r model
		NEWCAR="$year:$make:$model"
		echo "$NEWCAR" >> My_old_cars;;
		"2") sort My_old_cars;;
		"3") echo "End.";;
		*) echo "Invalid";;
	esac
	echo "Type the number 1 to enter a new car."
	echo "Type the number 2 to display the list of cars."
	echo "Type the number 3 to quit and exit the program."
	read -r input
done
echo "End."
