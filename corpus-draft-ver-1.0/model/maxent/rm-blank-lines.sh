#!/bin/bash

for i in {1..6}
do
   # for tagged closed-test results
   sed '/^$/d' ./train$i/CLOSE-TEST.word.tagged > ./train$i/CLOSE-TEST.word.tagged.clean
   echo "Check with head -n 3 ./train$i/CLOSE-TEST.word.tagged.clean"
   head -n 3 ./train$i/CLOSE-TEST.word.tagged.clean

   # for tagged open test results
   sed '/^$/d' ./train$i/OPEN-TEST.word.tagged > ./train$i/OPEN-TEST.word.tagged.clean
   echo -e "\nCheck with head -n 3 ./train$i/OPEN-TEST.word.tagged.clean"
   head -n 3 ./train$i/OPEN-TEST.word.tagged.clean
   echo -e "==========\n"
done
