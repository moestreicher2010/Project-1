#!/bin/bash

read -p "Enter Date (MMDD) " Date
read -p "Enter the Time (XX:00:00) " Time
read -p "Enter AM/PM " AP
read -p "Enter Game " Game

echo
echo "Date : $Date "
echo "Time : $Time " 
echo "AM/PM : $AP " 
echo "Game : Game "
echo 

case "$Game" in 

"Roulette") grep -n "$Time" ../Dealer_Analysis/"$Date"_Dealer_schedule | grep -iw "$AP" | awk '{print $1, $2, "Table Operator: " ,$5,$6}'
;;
"Blackjack") grep -n "$Time" ../Dealer_Analysis/"$Date"_Dealer_schedule | grep -iw "$AP" | awk '{print $1, $2, "Table Operator: " ,$3,$4}'  
;;
"Texas Hold Em") grep -n "$Time" ../Dealer_Analysis/"$Date"_Dealer_schedule | grep -iw "$AP" | awk '{print $1, $2, "Table Operator: " ,$7,$8}'
;;
esac

