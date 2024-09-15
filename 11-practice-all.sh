#! /bin/bash

validate () {

    If [ $1 -gt 5 ]

    echo "The number you have entered is greter than 5"

    fi
}

echo "please enter a number"

read num

validate $num

