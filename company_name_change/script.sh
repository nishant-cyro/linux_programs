
printf "Enter the filename: "
read filename

sed  's/\(\(www\.\)\([a-zA-Z0-9\-]*\)\(\.[a-zA-Z0-9\-]*\)\)/http:\/\/&/g' $filename
