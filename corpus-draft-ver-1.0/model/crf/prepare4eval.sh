#!/bin/bash

# late update 9 Nov 2017
# Written by Ye Kyaw Thu
# Preparation for evaluation: cut columns of field-1, field-2 and filed-3 from the tagged output file with CRF++.
# After that change to column to line format and combining filed-1+field-2 (Reference), filed-1+filed3 (Hypothesis).  

for i in {1..6}
do
   #cut field1, field2 and field3 for closed-test result
   cut -f1 ./train$i/CLOSE-TEST.col.out > ./train$i/f1
   cut -f2 ./train$i/CLOSE-TEST.col.out > ./train$i/f2
   cut -f3 ./train$i/CLOSE-TEST.col.out > ./train$i/f3

   # change column to line
   perl ./col2line.pl ./train$i/f1 > ./train$i/f1.line
   perl ./col2line.pl ./train$i/f2 > ./train$i/f2.line
   perl ./col2line.pl ./train$i/f3 > ./train$i/f3.line

   # combine
   perl ./mk-pair.pl ./train$i/f1.line ./train$i/f2.line > ./train$i/close-ref
   perl ./mk-pair.pl ./train$i/f1.line ./train$i/f3.line > ./train$i/close-hyp
  
   #removing f1, f2 and f3 files.
   rm ./train$i/f1; rm ./train$i/f2; rm ./train$i/f3;

   #For Open test:
   #cut field1, field2 and field3 for closed-test result
   cut -f1 ./train$i/OPEN-TEST.col.out > ./train$i/f1
   cut -f2 ./train$i/OPEN-TEST.col.out > ./train$i/f2
   cut -f3 ./train$i/OPEN-TEST.col.out > ./train$i/f3

   # change column to line
   perl ./col2line.pl ./train$i/f1 > ./train$i/f1.line
   perl ./col2line.pl ./train$i/f2 > ./train$i/f2.line
   perl ./col2line.pl ./train$i/f3 > ./train$i/f3.line

   # combine
   perl ./mk-pair.pl ./train$i/f1.line ./train$i/f2.line > ./train$i/open-ref
   perl ./mk-pair.pl ./train$i/f1.line ./train$i/f3.line > ./train$i/open-hyp
 
   #removing f1, f2 and f3 files.
   rm ./train$i/f1; rm ./train$i/f2; rm ./train$i/f3;

done
