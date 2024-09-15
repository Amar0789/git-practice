#! /bin/bash

echo "please enter a number"

read num

validate () 

{

    if [ $num -eq 5 ]

    then

        echo "The number you have entered is greter than 5"

    fi
}

validate $num






