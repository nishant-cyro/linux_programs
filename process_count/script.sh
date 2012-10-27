
count=`ps --no-header| wc -l`

total_processes=$(( count - 2 ))

echo "Total numbe of processes are: $total_processes"
