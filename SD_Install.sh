#!/bin/bash
# 显示注意事项
echo "################################################################################"
echo -e "\e[31m注意事项：\e[0m"
echo -e "\e[31m1. 此为安装和运行Stable Diffusion webui脚本，目前版本为1.5.1。\e[0m"
echo -e "\e[31m2. 如果已经安装完成，再次运行脚本将自动启动Stable Diffusion。\e[0m"
echo -e "\e[31m2. 运行此脚本会自动更新服务器依赖项（只需几秒钟）。\e[0m"
echo -e "\e[31m3. 下载的文件较多，运行时间长，速度根据你服务器情况而定。\e[0m"
echo -e "\e[31m4. 如果遇到任何问题，请联系 微信：relxa0 寻求帮助。\e[0m"
echo "################################################################################"

# 等待用户输入 "YES"
while true; do
  echo -e "\e[31m请确认是否继续运行此脚本（y/n）: \e[0m"
  read -n 1 input

  if [[ "$input" == "y" || "$input" == "Y" ]]; then
    break
  elif [[ "$input" == "n" || "$input" == "N" ]]; then
    echo -e "\e[31m脚本终止\e[0m"
    exit 1
  else
    echo -e "\e[31m输入错误，请重新输入\e[0m"
  fi
done

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
