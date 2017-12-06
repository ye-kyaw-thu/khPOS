#!/bin/bash

# last updated 16 May 2017
# written by Ye Kyaw Thu
# changing line to column format for all training and test data files

for i in {1..6}
do
   # for training files
   # word line ---> word column
   ./ch2col.pl ./train$i/train$i.word > ./train$i/train$i.word.col
   echo -e "\nFinished for ./train$i/train$i.word!"
   echo "head ./train$i/train$i.word.col"
   head ./train$i/train$i.word.col

   # tag line ---> tag column
  ./ch2col.pl ./train$i/train$i.tag > ./train$i/train$i.tag.col
   echo -e "\nFinished for ./train$i/train$i.tag!"
   echo "head ./train$i/train$i.tag.col"
   head ./train$i/train$i.tag.col

   # combine word.col and tag.col
   paste ./train$i/train$i.word.col ./train$i/train$i.tag.col > ./train$i/train$i.col

done

   # for closed-test data files
   ./ch2col.pl ./CLOSE-TEST.word > ./CLOSE-TEST.word.col
   echo -e "\nFinished for ./CLOSE-TEST.word!"
   echo "head ./CLOSE-TEST.word.col"
   head ./CLOSE-TEST.word.col

   ./ch2col.pl ./CLOSE-TEST.tag > ./CLOSE-TEST.tag.col
   echo -e "\nFinished for ./CLOSE-TEST.tag!"
   echo "head ./CLOSE-TEST.tag.col"
   head ./CLOSE-TEST.tag.col

   # combine CLOSE-TEST.word.col and CLOSE-TEST.tag.col
   paste ./CLOSE-TEST.word.col ./CLOSE-TEST.tag.col > ./CLOSE-TEST.col

   
   # for open-test data files
   ./ch2col.pl ./OPEN-TEST.word > ./OPEN-TEST.word.col
   echo -e "\nFinished for ./OPEN-TEST.word!"
   echo "head ./OPEN-TEST.word.col"
   head ./OPEN-TEST.word.col

   ./ch2col.pl ./OPEN-TEST.tag > ./OPEN-TEST.tag.col
   echo -e "\nFinished for ./OPEN-TEST.tag!"
   echo "head ./OPEN-TEST.tag.col"
   head ./OPEN-TEST.tag.col

   # combine CLOSE-TEST.word.col and CLOSE-TEST.tag.col
   paste ./OPEN-TEST.word.col ./OPEN-TEST.tag.col > ./OPEN-TEST.col

 
