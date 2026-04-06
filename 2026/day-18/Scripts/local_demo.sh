#!/bin/bash

echo "demo local variable"

demo_local() {
        local name="ASHISH ARORA"
        echo "Name is: $name"
}
demo_global(){
      username="Pankaj Udaas"
}
demo_local

echo "Outside function not avilable local variable: $name"

demo_global
echo "Global varibable avilable outside function also: $username"
