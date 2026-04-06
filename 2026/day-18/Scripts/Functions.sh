#!/bin/bash



greet() {

        echo "Hello,My namd is $1"
}

add() {

  sum=$(($1 + $2))
  echo "Sum is: $sum"

}

greet "ASHISH ARORA"

add 9 8
