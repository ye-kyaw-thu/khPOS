#!/bin/bash

#for khPOS tagging with RDR approach
#I used Python 2.7: source activate py2.7

cd /home/ye/tool/RDRPOSTagger-master/pSCRDRtagger/

for i in {1..6}
do
   #training 
   python RDRPOSTagger.py train /home/ye/experiment/kh-pos/final-exp/rdr/train$i/train$i
   echo -e "\n Finished RDR training for train$i!"
done
