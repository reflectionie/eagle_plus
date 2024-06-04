 accelerate launch -m --mixed_precision=bf16 \
 eagle.train.main --tmpdir /gs/bs/tga-tslab/tingyuan/llama/EAGLE/new_train_data \
 --cpdir ./ --configpath /gs/bs/tga-tslab/tingyuan/llama/EAGLE/eagle/train/vicuna_7B_config.json --wandb_run_name w/o prob

 accelerate launch -m --mixed_precision=bf16 \
 eagle.train.main --tmpdir /gs/bs/tga-tslab/tingyuan/llama/EAGLE/new_train_data \
 --cpdir ./ --configpath /gs/bs/tga-tslab/tingyuan/llama/EAGLE/eagle/train/vicuna_7B_config_prob.json --wandb_run_name w prob