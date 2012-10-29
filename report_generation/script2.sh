awk -F "|" '$2 == "chennai" { print $0 }' subscribers.txt > chennai.txt
