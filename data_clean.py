import os
import torch
from tqdm import *
# 设置你的路径
path = '/home/5/uu02155/data/llama/EAGLE/new_train_data/sharegpt_0_67999_mufp16/0/'

# 遍历目录下的所有文件
for filename in tqdm(os.listdir(path)):
    # print(filename)
    # 检查文件扩展名是否为.pt
    if filename.endswith('.ckpt'):
        # 构造完整的文件路径
        file_path = os.path.join(path, filename)
        # 加载文件
        data = torch.load(file_path)
        # 检查data.keys()的长度
        if len(data.keys()) == 4:
            # 如果长度为4，保留文件
            pass
            # print(f"Retained {filename} with keys: {list(data.keys())}")
        else:
            # 如果长度不为4，删除文件
            os.remove(file_path)
            print(f"Deleted {filename} with keys: {list(data.keys())}")
