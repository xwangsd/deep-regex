cd /scratch/cluster/xwang/deep-regex/deep-regex-model

#rm -rf data_turk_eval_turk.back
#cp -r data_turk_eval_turk data_turk_eval_turk.back

dataset=data_turk_eval_turk_rectified
python preprocess.py --srcfile $dataset/src-train.txt --targetfile $dataset/targ-train.txt --srcvalfile $dataset/src-val.txt --targetvalfile $dataset/targ-val.txt --outputfile $dataset/out_demo
th train.lua -data_file $dataset/out_demo-train.hdf5 -val_data_file $dataset/out_demo-train.hdf5 -savefile $dataset/model > $dataset/train_log.txt

