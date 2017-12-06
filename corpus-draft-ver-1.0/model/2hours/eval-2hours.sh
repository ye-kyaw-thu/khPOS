#!/bin/bash

for i in {1..6}
do
   echo -e "\nEvaluation for closed-test with train$i:"
   perl ./gradepos.pl ./CLOSE-TEST ./train$i/CLOSE-TEST.word.tagged.slash  
done

for i in {1..6}
do
   echo -e "\nEvaluation for open-test with train$i:"
   perl ./gradepos.pl  ./OPEN-TEST ./train$i/OPEN-TEST.word.tagged.slash  
done
