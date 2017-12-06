#!/bin/bash

# late update 9 Nov 2017
# Written by Ye Kyaw Thu
# for evaluation CRF models with closed and open test-sets

for i in {1..6}
do

   echo -e "\n### Evaluation for train$i:"
   #for closed-test
   echo  "closed-test: "
   perl gradepos.pl ./train$i/close-ref ./train$i/close-hyp
   
   #for open-test
   echo "open-test: "
   perl gradepos.pl ./train$i/open-ref ./train$i/open-hyp

done
