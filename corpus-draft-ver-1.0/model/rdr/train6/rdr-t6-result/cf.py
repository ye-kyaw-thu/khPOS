from sklearn.metrics import confusion_matrix
import sys

# Read the data
ref = sys.argv[1]
hyp = sys.argv[2]

with open(ref, 'r') as infile:
    true_values = [str(i) for i in infile]
with open(hyp, 'r') as infile:
    predictions = [str(i) for i in infile]

# Make confusion matrix
confusion = confusion_matrix(true_values, predictions)

def print_confusion(confusion):
    print('   ' + '  '.join([str(n) for n in range(confusion.shape[1])]))
    for rownum in range(confusion.shape[0]):
        print(str(rownum) + '  ' + '  '.join([str(n) for n in confusion[rownum]]))

print_confusion(confusion)
