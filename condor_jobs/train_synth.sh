cd /scratch/cluster/xwang/deep-regex/deep-regex-model
rm -rf data_synth_eval_synth.back
cp -r data_synth_eval_synth data_synth_eval_synth.back
python preprocess.py --srcfile data_synth_eval_synth/src-train.txt --targetfile data_synth_eval_synth/targ-train.txt --srcvalfile data_synth_eval_synth/src-val.txt --targetvalfile data_synth_eval_synth/targ-val.txt --outputfile data_synth_eval_synth/out_demo
th train.lua -data_file data_synth_eval_synth/out_demo-train.hdf5 -val_data_file data_synth_eval_synth/out_demo-train.hdf5 -savefile data_synth_eval_synth/model > data_synth_eval_synth/train_log.txt

