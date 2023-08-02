#!/bin/bash

# 更新包列表
sudo apt update

# 安装所需的软件包
sudo apt install wget git python3 python3-venv -y

# 克隆 GitHub 仓库
git clone https://github.com/AUTOMATIC1111/stable-diffusion-webui.git

# 切换到克隆的仓库目录
cd stable-diffusion-webui

# 运行脚本
./webui.sh --share --enable-insecure-extension-access
