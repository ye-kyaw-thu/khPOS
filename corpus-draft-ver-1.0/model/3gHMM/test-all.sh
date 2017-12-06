#!/bin/bash

# last updated: 19 May 2017
# written by Ye Kyaw Thu
# testing with closed and open test data

for i in {1..6}
do

   #for closed testing
   echo -e "For train$i:\n"
   echo "start closed testing ..."
   cat ./CLOSE-TEST.word | /home/ye/tool/jitar-0.3.3/bin/jitar-tag ./train$i/train$i.model > ./train$i/CLOSE-TEST.word.TAGGED
   echo -e "closed testing with train$i Fin!\n"
   echo "head -n 3 ./train$i/CLOSE-TEST.word.TAGGED"
   head -n 3 ./train$i/CLOSE-TEST.word.TAGGED
 
   #for open testing
   echo -e "\nstart open testing ..."
   cat ./OPEN-TEST.word | /home/ye/tool/jitar-0.3.3/bin/jitar-tag ./train$i/train$i.model > ./train$i/OPEN-TEST.word.TAGGED
   echo -e "open testing with train$i Fin!\n"
   echo "head -n 3 ./train$i/OPEN-TEST.word.TAGGED"
   head -n 3 ./train$i/OPEN-TEST.word.TAGGED
   echo -e "============\n"

done
