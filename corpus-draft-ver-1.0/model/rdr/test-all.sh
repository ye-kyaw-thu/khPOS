#!/bin/bash

# last updated 11 November 2017
# written by Ye Kyaw Thu
# for testing with built RDR models
# for khPOS
# I used Python 2.7: source activate py2.7

cd /home/ye/tool/RDRPOSTagger-master/pSCRDRtagger

for i in {1..6}
do

   #testing with closed-test data
   #python2.7 RDRPOSTagger.py PATH-TO-TRAINED-MODEL PATH-TO-LEXICON PATH-TO-RAW-TEXT-CORPUS 
   python RDRPOSTagger.py tag /home/ye/experiment/kh-pos/final-exp/rdr/train$i/train$i.RDR /home/ye/experiment/kh-pos/final-exp/rdr/train$i/train$i.DICT /home/ye/experiment/kh-pos/final-exp/rdr/train$i/CLOSE-TEST.word
   echo -e "\n Finished testing with closed-test data file with train$i RDR model!"

   #testing with open test data
   python RDRPOSTagger.py tag /home/ye/experiment/kh-pos/final-exp/rdr/train$i/train$i.RDR /home/ye/experiment/kh-pos/final-exp/rdr/train$i/train$i.DICT /home/ye/experiment/kh-pos/final-exp/rdr/train$i/OPEN-TEST.word
   echo -e "\n Finished testing with open test data file with train$i RDR model!"

done
