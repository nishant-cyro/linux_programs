awk -F "|" '$1 ~ /.*@yahoo.com$/ { print $0 }' subscribers.txt > yahoo.txt
