#!/bin/bash

# last updated: 20 May 2017
# written by Ye Kyaw Thu
# training with KyTea (L2 regularized SVM)

for i in {1..6}
do
   train-kytea -full ./train$i/train$i -model ./train$i/train$i.model -nows -modtext
   echo -e "==========\n"
done
