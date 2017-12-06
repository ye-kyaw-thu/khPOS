#!/bin/bash

# last updated: 11 Nov 2017
# written by Ye Kyaw Thu
# for testing with KyTea models

#testing with closed test data
for i in {1..6}
do

   kytea -model ./train$i/train$i.model -nows -nounk < ./CLOSE-TEST.word > ./train$i/CLOSE-TEST.word.TAGGED
   head ./train$i/CLOSE-TEST.word.TAGGED
   echo "================="

done

#testing with open test data
for i in {1..6}
do

   kytea -model ./train$i/train$i.model -nows -nounk < ./OPEN-TEST.word > ./train$i/OPEN-TEST.word.TAGGED
   head ./train$i/OPEN-TEST.word.TAGGED
   echo "================="

done
