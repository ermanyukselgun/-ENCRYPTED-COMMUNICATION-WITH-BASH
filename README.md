#  ENCRYPTED COMMUNICATION WITH BASH
 In this assignment, we ask you to help Baboli and Aliye communicate. They want the information communication between them to be kept confidential, for this they want to encrypt the files and send them like that. For this purpose, your shell program will write the information in "baboli.txt" in a folder given from the command line with "enc.txt" in the same folder, and then "aliye" in another folder. txt "file. "baboli.txt" and "enc.txt" file has been prepared in advance, and you need to create the "aliye.txt" file. Each line of the "baboli.txt" file will have a letter and a number attached to it. The total number of lines in this file will be given with the -n parameter from the command line. The "enc.txt" file will also contain a different number on each line, with the same number of lines. These numbers will be from 1 to the number of lines. Your program will encrypt as follows: The ASCII code of the character in each line in the "baboli.txt" file will be multiplied first by the positive number next to it. This result will be subjected to the following operation with a key integer given from the command line (to be specified with -mp parameter), where the result is p: ((p + m) mod74) + 48.The key integer is positive and can take a maximum of 99. It will be converted into characters according to the ASCII table and printed in the "aliye.txt" file according to the order of the numbers in the "enc.txt" file. Your shell program should run from the terminal as given below. ./s24xxx.sh-b <baboliddirectory> -a <linedirectory> -n <linecount> -m <key> 