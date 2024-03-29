#!/bin/bash

total_number=1

cities=(delhi mumbai kolkatta chennai)
domains=(yahoo.com gmail.com rediffmail.com hotmail.com)
generate_random_number()
  {
    random_number=$(( $RANDOM % $total_number ))
  }

generate_random_city()
  { 
    total_number=${#cities[@]}
    generate_random_number
    random_city=${cities[$random_number]}
  }
    
generate_random_domain()
  {
    total_number=${#domains[@]}
    generate_random_number
    random_domain=${domains[$random_number]}
  }

generate_random_phone_number()
  {
    total_number=10
    random_phone_number=""
    for j in {1..10}
    do
      generate_random_number
      random_phone_number=$random_phone_number$random_number	
    done
  }

for i in {1..100}
  do
    generate_random_city
    generate_random_domain
    generate_random_phone_number
    echo "random$i@$random_domain|$random_city|$random_phone_number" >> subscribers.txt
  done
