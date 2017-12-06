#!/bin/bash

# last updated: 11 Nov 2017
# written by Ye Kyaw Thu
# replacing / with | (adjusting format for training with low-resource-pos-tagger, 2hours annotation approach)

for i in {1..6}
do
   #for training file
   tr -s '\/' '\|' < ./train$i/train$i > ./train$i/train$i.pipe
   #for closed-test file
   tr -s '\/' '\|' < ./CLOSE-TEST > ./CLOSE-TEST.pipe
 done

   #for open test file
   tr -s '\/' '\|' < ./OPEN-TEST > ./OPEN-TEST.pipe
