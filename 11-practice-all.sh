#! /bin/bash

validate () {

    If [ $num -gt 5 ]

    then

        echo "The number you have entered is greter than 5"

    fi
}

echo "please enter a number"

read num

validate $num

