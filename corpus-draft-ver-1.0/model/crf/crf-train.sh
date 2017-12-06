#!/bin/bash

# late update 9 Nov 2017
# Written by Ye Kyaw Thu
# for training CRF models with CRF++ toolkit on khPOS corpus

for i in {1..6}
do
   # crf_learn template_file train_file model_file
   time crf_learn ./template ./train$i/train$i.col ./train$i/train$i.crf-model
   echo -e "\n Finished training for ./train$i/train$i.col!"
done
