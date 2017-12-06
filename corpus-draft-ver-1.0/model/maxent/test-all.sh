#!/bin/bash

#Last updated 11 Nov 2017
# written by Ye Kyaw Thu
# for testing with trained maximum entropy models:

for i in {1..6}
do
   #for closed test
   echo -e "\nStart closed testing with ./CLOSE-TEST.word ..."
   python2.7 /home/ye/tool/maxent-master/example/postagger/maxent_tagger.py -m ./train$i/train$i.model ./CLOSE-TEST.word > ./train$i/CLOSE-TEST.word.tagged
   echo -e "Finished!"

   #for closed test
   echo -e "\nStart open testing with ./OPEN-TEST.word ..."
   python2.7 /home/ye/tool/maxent-master/example/postagger/maxent_tagger.py -m ./train$i/train$i.model ./OPEN-TEST.word > ./train$i/OPEN-TEST.word.tagged
   echo -e "Finished!"

done
