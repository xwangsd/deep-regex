cd /scratch/cluster/xwang/deep-regex/deep-regex-model
rm -rf data_kushman_eval_kushman.back
cp -r data_kushman_eval_kushman data_kushman_eval_kushman.back
python preprocess.py --srcfile data_kushman_eval_kushman/src-train.txt --targetfile data_kushman_eval_kushman/targ-train.txt --srcvalfile data_kushman_eval_kushman/src-val.txt --targetvalfile data_kushman_eval_kushman/targ-val.txt --outputfile data_kushman_eval_kushman/out_demo
th train.lua -data_file data_kushman_eval_kushman/out_demo-train.hdf5 -val_data_file data_kushman_eval_kushman/out_demo-train.hdf5 -savefile data_kushman_eval_kushman/model > data_kushman_eval_kushman/train_log.txt

