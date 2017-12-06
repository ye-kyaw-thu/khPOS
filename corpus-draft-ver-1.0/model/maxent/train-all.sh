#!/bin/bash

for i in {1..6}
do

   python2.7 /home/ye/tool/maxent-master/example/postagger/postrainer.py ./train$i/train$i.model -f ./train$i/train$i --iters 1000

done
