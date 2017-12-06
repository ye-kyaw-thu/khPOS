#!/bin/bash

# last update: 19 May 2017
# written by Ye Kyaw Thu
# trainining 3-gram HMM POSTagging models with jitar-0.3.3:

for i in {1..6}
do
   echo -e "\nStart training 3-gram HMM POSTagging model for ./train$i/train$i ...\n"
   /home/ye/tool/jitar-0.3.3/bin/jitar-train brown ./train$i/train$i ./train$i/train$i.model
   ls ./train$i/
   echo -e "========== End for ./t$i/ ========="
done

