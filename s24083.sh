#!/bin/bash
chr(){
	printf \\$(printf '%03o' $1)
}

ord(){
	 printf '%d' "'$1"
}

while getopts b:a:n:m: flag
do
	case "${flag}" in
		b) babolidirectory=${OPTARG};;
		a) aliyedirectory=${OPTARG};;
		n) linenumber=${OPTARG};;
		m) Number=${OPTARG};;
	esac
done 

i=1
while [ "$i" -le "$linenumber" ]
do
line=$(head -n "$i" "$babolidirectory""/baboli.txt" | tail -1)
fl="${line:0:1}"
fn="${line:1:2}"
enc1=$(( "($(ord "$fl")*"$fn"+"$Number")%74+48" ))
enc2=$(chr "$enc1")
whereIs=$(head -n "$i" "$babolidirectory""/enc.txt" | tail -1)
my_temp["$whereIs"]="$enc2"
i=$((i+1))
done

for i in "${my_temp[@]}"
do
	echo "$i" >> "$aliyedirectory""/aliye.txt"
done





