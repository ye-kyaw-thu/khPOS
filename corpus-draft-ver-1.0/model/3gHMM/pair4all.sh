#!/bin/bash

#jitar-tag output is sequence of tags only
#I have to make a pair of word and tag such as word/tag for evaluation with Accuracy

for i in {1..6}
do
   #for closed test outputs
   ./mk-pair.pl ./CLOSE-TEST.word ./train$i/CLOSE-TEST.word.TAGGED > ./train$i/CLOSE-TEST.word.TAGGED.pair
   echo -e "\nhead -n 3 of ./train$i/CLOSE-TEST.word.TAGGED.pair";
   head -n 3 ./train$i/CLOSE-TEST.word.TAGGED.pair
   
   #for open test outputs
   ./mk-pair.pl ./OPEN-TEST.word ./train$i/OPEN-TEST.word.TAGGED > ./train$i/OPEN-TEST.word.TAGGED.pair
   echo -e "\nhead -n 3 of ./train$i/OPEN-TEST.word.TAGGED.pair";
   head -n 3 ./train$i/OPEN-TEST.word.TAGGED.pair
done
