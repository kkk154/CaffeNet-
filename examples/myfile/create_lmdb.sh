#!/usr/bin/env sh
MY=examples/myfile
 
echo "Create train lmdb.."
rm -rf $MY/img_train_lmdb
build/tools/convert_imageset \
--shuffle \
--resize_height=256 \
--resize_width=256 \
/home/hjr/workspace/caffe-master/data/mydata/ \
$MY/train.txt \
$MY/img_train_lmdb
 
echo "Create test lmdb.."
rm -rf $MY/img_test_lmdb
build/tools/convert_imageset \
--shuffle \
--resize_width=256 \
--resize_height=256 \
/home/hjr/workspace/caffe-master/data/mydata/ \
$MY/test.txt \
$MY/img_test_lmdb
 
echo "All Done.."
