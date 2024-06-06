 accelerate launch -m --mixed_precision=bf16 \
 eagle.train.main --tmpdir /gs/bs/tga-tslab/tingyuan/llama/EAGLE/new_train_data \
 --cpdir ./ --configpath /gs/bs/tga-tslab/tingyuan/llama/eagle_plus/eagle/train/vicuna_7B_config.json --wandb_run_name 2024_06_07_1_w/o_prob

 accelerate launch -m --mixed_precision=bf16 \
 eagle.train.main --tmpdir /gs/bs/tga-tslab/tingyuan/llama/EAGLE/new_train_data \
 --cpdir ./ --configpath /gs/bs/tga-tslab/tingyuan/llama/eagle_plus/eagle/train/vicuna_7B_config_prob.json --wandb_run_name 2024_06_07_1_w_prob

 accelerate launch -m --mixed_precision=bf16 \
 eagle.train.main --tmpdir /gs/bs/tga-tslab/tingyuan/llama/EAGLE/new_train_data_fake \
 --cpdir ./ --configpath /gs/bs/tga-tslab/tingyuan/llama/eagle_plus/eagle/train/vicuna_7B_config.json --wandb_run_name w/o_prob
