!/usr/bin/env sh
DATA=data/mydata
MY=examples/myfile
 
echo "Create train.txt..."
rm -rf $MY/train.txt
for i in 1 2 3 4 5 
do
find $DATA/train/$i/ -name *.jpg | cut -d '/' -f3-5 | sed "s/$/ $i/">>$MY/train.txt
done
echo "Create test.txt..."
rm -rf $MY/test.txt
for i in 1 2 3 4 5
do
find $DATA/test/$i/ -name *.jpg | cut -d '/' -f3-5 | sed "s/$/ $i/">>$MY/test.txt
done
echo "All done"
