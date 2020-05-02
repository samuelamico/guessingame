#!/usr/bin/env bash
echo "Guess the number of the file"
number=`ls | wc -l`
#echo $number

function close {
  echo "too high"
}

function far {
  echo "to low"
}


while true
do
  echo "Enter the number guess:"
  read guess

  if [[ $number -eq $guess ]]
  then
    echo "You WIN!!!"
    break
  elif [[ $number -gt $guess ]]
  then
    far
  elif [[ $guess -gt $number ]]
  then
    close
  fi

done

