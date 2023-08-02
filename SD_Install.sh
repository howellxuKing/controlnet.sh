#!/bin/bash
# 显示注意事项
echo "################################################################################"
echo "注意事项："
echo -e "\e[31m注意事项：\e[0m"
echo -e "\e[31m1. 此为安装和运行Stable Diffusion脚本。\e[0m"
echo -e "\e[31m2. 运行此脚本将下载更新服务器依赖项。\e[0m"
echo -e "\e[31m3. 下载的文件多，运行时间长，速度根据你服务器情况而定。\e[0m"
echo -e "\e[31m4. 如果遇到任何问题，请联系 微信：relxa0 寻求帮助。\e[0m"
echo "################################################################################"

# 等待用户输入 "YES"
read -p "请输入 YES 继续运行脚本: " input
if [ "$input" != "YES" ]; then
  echo "输入不正确，脚本终止"
  exit 1
fi
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
