DATA_FILE_LOCATION=/Users/apple/DassaultUnix

echo "enter pattern to search : "
read pattern # to accept value from the keyboard, in a variablex

if [ -z $pattern ] # to check if the variable is holind null value
then
	echo "Pattern cannot be blank"
	exit -1;
fi

echo "In which file ? "
read filename 

if [ -z $filename ]
then
	echo "Filename cannot be blank"
	exit -2;
fi

if [ -f $DATA_FILE_LOCATION/$filename ] # if the file exiss
then 
	grep $pattern $DATA_FILE_LOCATION/$filename --color
	if [ $? -eq 1 ]
	then
		echo "Pattern NOT found : $pattern in $filename"
		exit -3;
	else
		echo "-- Pattern FOUND --"
		exit 0;
	fi
	
else	
	echo "DATA file doesnot exists!!!"
	exit -4 # negative value as exit means some level of failure
fi

exit 0; # by default line being the last line | success as exit status known as 0
