 accelerate launch -m --mixed_precision=bf16 \
 eagle.train.main --tmpdir /gs/bs/tga-tslab/tingyuan/llama/EAGLE/new_train_data \
 --cpdir ./ --configpath /gs/bs/tga-tslab/tingyuan/llama/eagle_plus/eagle/train/vicuna_7B_config.json --wandb_run_name 2024_06_07_1_w_o_prob

 accelerate launch -m --mixed_precision=bf16 \
 eagle.train.main --tmpdir /gs/bs/tga-tslab/tingyuan/llama/EAGLE/new_train_data \
 --cpdir ./ --configpath /gs/bs/tga-tslab/tingyuan/llama/eagle_plus/eagle/train/vicuna_7B_config_prob.json --wandb_run_name 2024_06_07_1_w_prob

 accelerate launch -m --mixed_precision=bf16 \
 eagle.train.main --tmpdir /gs/bs/tga-tslab/tingyuan/llama/EAGLE/new_train_data_fake \
 --cpdir ./ --configpath /gs/bs/tga-tslab/tingyuan/llama/eagle_plus/eagle/train/vicuna_7B_config.json --wandb_run_name w/o_prob


accelerate launch -m --mixed_precision=bf16 \
 eagle.train.main --tmpdir /gs/bs/tga-tslab/tingyuan/llama/EAGLE/new_train_data \
 --cpdir ./ --configpath /gs/bs/tga-tslab/tingyuan/llama/eagle_plus/eagle/train/vicuna_7B_config_prob.json --wandb_run_name 2024_06_09_1_w_prob_fix_bug_real_data

accelerate launch -m --mixed_precision=bf16 \
 eagle.train.main --tmpdir /gs/bs/tga-tslab/tingyuan/llama/EAGLE/new_train_data \
 --cpdir ./ --configpath /gs/bs/tga-tslab/tingyuan/llama/eagle_plus/eagle/train/vicuna_7B_config_mask.json --wandb_run_name 2024_06_09_1_w_mask_0.2


# all  #############################################################################################

accelerate launch -m --mixed_precision=bf16 \
 eagle.train.main --tmpdir /home/5/uu02155/data/llama/eagle_plus/all_data \
 --cpdir ./ --configpath /gs/bs/tga-tslab/tingyuan/llama/eagle_plus/eagle/train/vicuna_7B_config_prob.json --wandb_run_name ALL_2024_06_13_w_prob

accelerate launch -m --mixed_precision=bf16 \
 eagle.train.main --tmpdir /home/5/uu02155/data/llama/eagle_plus/all_data \
 --cpdir ./ --configpath /gs/bs/tga-tslab/tingyuan/llama/eagle_plus/eagle/train/vicuna_7B_config.json --wandb_run_name ALL_2024_06_13_w_o_prob

# resume  #############################################################################################

accelerate launch -m --mixed_precision=bf16 \
 eagle.train.main --tmpdir /home/5/uu02155/data/llama/eagle_plus/all_data \
 --cpdir ./ --configpath /gs/bs/tga-tslab/tingyuan/llama/eagle_plus/eagle/train/vicuna_7B_config_prob.json --wandb_run_name ALL_2024_06_13_w_prob --resume --run_id sytc5288

accelerate launch -m --mixed_precision=bf16 \
 eagle.train.main --tmpdir /home/5/uu02155/data/llama/eagle_plus/all_data \
 --cpdir ./ --configpath /gs/bs/tga-tslab/tingyuan/llama/eagle_plus/eagle/train/vicuna_7B_config.json --wandb_run_name ALL_2024_06_13_w_o_prob --resume --run_id ceccboxi
