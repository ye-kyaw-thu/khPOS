#!/bin/bash

# last updated: 11 Nov 2017
# written by Ye Kyaw Thu
# replacing | with / (preparing for evaluation)

for i in {1..6}
do
   #for closed-test data tagged with 2hours model files
   tr -s '\|' '\/' < ./train$i/CLOSE-TEST.word.tagged > ./train$i/CLOSE-TEST.word.tagged.slash
   #for opene-test data tagged with 2hours model files
   tr -s '\|' '\/' < ./train$i/OPEN-TEST.word.tagged > ./train$i/OPEN-TEST.word.tagged.slash
 done

