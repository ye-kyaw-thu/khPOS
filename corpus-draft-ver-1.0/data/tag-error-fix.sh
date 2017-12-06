#!/bin/bash

# for replacing following tags from train1 to train6 and CLOSE and OPEN test data ...
#JJ_NN ---> be NN
#VB_IN ---> IN
#VB_NN ---> NN
# ! and ? ---> SYM.
#RBnews-pk-lift-18-6-15-pos000002  ---> RB
# LBR ---> SYM
# RBR ---> SYM

#REF:  perl ./ch-wordtag.pl ./CLOSE-TEST "/" t RBR SYM | grep RBR

#replacing closed test data file:
perl ./ch-wordtag.pl ./CLOSE-TEST "/" t "JJ_NN" "NN" > ./tmptmp; rm ./CLOSE-TEST; mv ./tmptmp ./CLOSE-TEST
perl ./ch-wordtag.pl ./CLOSE-TEST "/" t "VB_IN" "IN" > ./tmptmp; rm ./CLOSE-TEST; mv ./tmptmp ./CLOSE-TEST
perl ./ch-wordtag.pl ./CLOSE-TEST "/" t "VB_NN" "NN" > ./tmptmp; rm ./CLOSE-TEST; mv ./tmptmp ./CLOSE-TEST
perl ./ch-wordtag.pl ./CLOSE-TEST "/" t "!" "SYM" > ./tmptmp; rm ./CLOSE-TEST; mv ./tmptmp ./CLOSE-TEST
perl ./ch-wordtag.pl ./CLOSE-TEST "/" t "?" "SYM" > ./tmptmp; rm ./CLOSE-TEST; mv ./tmptmp ./CLOSE-TEST
perl ./ch-wordtag.pl ./CLOSE-TEST "/" t "LBR" "SYM" > ./tmptmp; rm ./CLOSE-TEST; mv ./tmptmp ./CLOSE-TEST
perl ./ch-wordtag.pl ./CLOSE-TEST "/" t "RBR" "SYM" > ./tmptmp; rm ./CLOSE-TEST; mv ./tmptmp ./CLOSE-TEST
perl ./ch-wordtag.pl ./CLOSE-TEST "/" t "RBnews-pk-lift-18-6-15-pos000002" "RB" > ./tmptmp; rm ./CLOSE-TEST; mv ./tmptmp ./CLOSE-TEST

#replacing open test data file:
perl ./ch-wordtag.pl ./OPEN-TEST "/" t "JJ_NN" "NN" > ./tmptmp; rm ./OPEN-TEST; mv ./tmptmp ./OPEN-TEST
perl ./ch-wordtag.pl ./OPEN-TEST "/" t "VB_IN" "IN" > ./tmptmp; rm ./OPEN-TEST; mv ./tmptmp ./OPEN-TEST
perl ./ch-wordtag.pl ./OPEN-TEST "/" t "VB_NN" "NN" > ./tmptmp; rm ./OPEN-TEST; mv ./tmptmp ./OPEN-TEST
perl ./ch-wordtag.pl ./OPEN-TEST "/" t "!" "SYM" > ./tmptmp; rm ./OPEN-TEST; mv ./tmptmp ./OPEN-TEST
perl ./ch-wordtag.pl ./OPEN-TEST "/" t "?" "SYM" > ./tmptmp; rm ./OPEN-TEST; mv ./tmptmp ./OPEN-TEST
perl ./ch-wordtag.pl ./OPEN-TEST "/" t "LBR" "SYM" > ./tmptmp; rm ./OPEN-TEST; mv ./tmptmp ./OPEN-TEST
perl ./ch-wordtag.pl ./OPEN-TEST "/" t "RBR" "SYM" > ./tmptmp; rm ./OPEN-TEST; mv ./tmptmp ./OPEN-TEST
perl ./ch-wordtag.pl ./OPEN-TEST "/" t "RBnews-pk-lift-18-6-15-pos000002" "RB" > ./tmptmp; rm ./OPEN-TEST; mv ./tmptmp ./OPEN-TEST


#replacing train1 to train6
for i in {1..6}
do

perl   ./ch-wordtag.pl ./train$i/train$i "/" t "JJ_NN" "NN" > ./tmptmp; rm ./train$i/train$i; mv ./tmptmp ./train$i/train$i;
perl   ./ch-wordtag.pl ./train$i/train$i "/" t "VB_IN" "IN" > ./tmptmp; rm ./train$i/train$i; mv ./tmptmp ./train$i/train$i;
perl   ./ch-wordtag.pl ./train$i/train$i "/" t "VB_NN" "NN" > ./tmptmp; rm ./train$i/train$i; mv ./tmptmp ./train$i/train$i;
perl   ./ch-wordtag.pl ./train$i/train$i "/" t "!" "SYM" > ./tmptmp; rm ./train$i/train$i; mv ./tmptmp ./train$i/train$i;
perl   ./ch-wordtag.pl ./train$i/train$i "/" t "?" "SYM" > ./tmptmp; rm ./train$i/train$i; mv ./tmptmp ./train$i/train$i;
perl   ./ch-wordtag.pl ./train$i/train$i "/" t "LBR" "SYM" > ./tmptmp; rm ./train$i/train$i; mv ./tmptmp ./train$i/train$i;
perl   ./ch-wordtag.pl ./train$i/train$i "/" t "RBR" "SYM" > ./tmptmp; rm ./train$i/train$i; mv ./tmptmp ./train$i/train$i;
perl   ./ch-wordtag.pl ./train$i/train$i "/" t "RBnews-pk-lift-18-6-15-pos000002" "RB" > ./tmptmp; rm ./train$i/train$i; mv ./tmptmp ./train$i/train$i;

done

#replacing / word to SLASH from train1 to train6
for i in {1..6}
do
perl   ./ch-wordtag.pl ./train$i/train$i "/" w "/" "SLASH" > ./tmptmp; rm ./train$i/train$i; mv ./tmptmp ./train$i/train$i;
done


