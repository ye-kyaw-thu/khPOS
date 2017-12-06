#!/bin/bash

# for splitting word and tag files for all training folder
# ye@Lab

#replacing train1 to train6
#for i in {1..6}
#do
#   perl ./mk-wordtag.pl ./train$i/train$i "\/" w > ./train$i/train$i.word
#   perl ./mk-wordtag.pl ./train$i/train$i "\/" t > ./train$i/train$i.tag
#done

   perl ./mk-wordtag.pl ./CLOSE-TEST "\/" w > ./CLOSE-TEST.word
   perl ./mk-wordtag.pl ./CLOSE-TEST "\/" t > ./CLOSE-TEST.tag
#   perl ./mk-wordtag.pl ./OPEN-TEST "\/" w > ./OPEN-TEST.word
#   perl ./mk-wordtag.pl ./OPEN-TEST "\/" t > ./OPEN-TEST.tag

