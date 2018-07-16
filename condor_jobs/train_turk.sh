cd /scratch/cluster/xwang/deep-regex/deep-regex-model
rm -rf data_turk_eval_turk.back
cp -r data_turk_eval_turk data_turk_eval_turk.back
python preprocess.py --srcfile data_turk_eval_turk/src-train.txt --targetfile data_turk_eval_turk/targ-train.txt --srcvalfile data_turk_eval_turk/src-val.txt --targetvalfile data_turk_eval_turk/targ-val.txt --outputfile data_turk_eval_turk/out_demo
th train.lua -data_file data_turk_eval_turk/out_demo-train.hdf5 -val_data_file data_turk_eval_turk/out_demo-train.hdf5 -savefile data_turk_eval_turk/model > data_turk_eval_turk/train_log.txt

