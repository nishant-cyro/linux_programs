#!/bin/bash

random_number=0
random_city="delhi"
random_domain="yahoo.com"
random_phone_number=0000000000

declare -a cities=('delhi' 'mumbai' 'chennai' 'kolkatta')
declare -a domains=( yahoo.com gmail.com hotmail.com rediffmail.com )


generate_random_number(n)
  {
    random_number=$(( $RANDOM % n ))
  }

generate_random_city()
  { 
    generate_random_number(${#cities[*]})
    random_city=${cities[$random_number]}
  }
    
generate_random_domain()
  { 
    generate_random_number(${#domains[*]})
    random_domain=${domains[$random_number]}
  }

generate_random_phone_number()
  {
    for i in {1..10}
      generate_random_number(10)
      random_phone_number=$random_phone_number$random_number	
    done
  }

for i in {1..100}
  {
    generate_random_city()
    generate_random_domain()
    generate_random_phone_number()
    echo "$i@$random_domain|$random_city|$random_phone_number" >> subscribers.txt
  }
