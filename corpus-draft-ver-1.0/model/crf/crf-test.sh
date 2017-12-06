#!/bin/bash

# late update 9 Nov 2017
# Written by Ye Kyaw Thu
# for testing CRF models with CRF++ toolkit on khPOS corpus

for i in {1..6}
do
   # crf_test -m model_file test_file 
   crf_test -m ./train$i/train$i.crf-model ./CLOSE-TEST.col > ./train$i/CLOSE-TEST.col.out
   crf_test -m ./train$i/train$i.crf-model ./OPEN-TEST.col > ./train$i/OPEN-TEST.col.out
   echo -e "\n Finished testing for ./train$i/train$i.crf-model!"
done
