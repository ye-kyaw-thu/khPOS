#!/bin/bash

# last updated: 11 Nov 2017
# written by Ye Kyaw Thu
# training models with low-resource-pos tagger 2014

export JAVA_OPTS="-Xmx4g"

program_path='/home/ye/tool/low-resource-pos-tagging-2014-master';
training_path='/home/ye/experiment/kh-pos/final-exp/2hours';

for i in {1..6}
do

   #.pipe is the output file after replacing "/" symbols with "|" symbol (adjusting the format with low-resource-pos tagger 2014)
   #I used --memmIterations 100 (default setting) and --emIterations 50 (default setting)
 
   $program_path/run --rawFile $training_path/train$i/train$i.word --toksupFile $training_path/train$i/train$i.pipe --typesupFile $training_path/train$i/train$i.pipe --modelFile $training_path/train$i/train$i.pipe.ser --memmCutoff 10 --memmIterations 100 --emIterations 50 
  
   echo -e "\n training finished !!!"
   echo "ls $training_path/train$i/"
   ls $training_path/train$i/
done
