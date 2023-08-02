#!/bin/bash
# 显示注意事项
echo "################################################################################"
echo -e "\e[31m注意事项：此为1.5.1版本目录\e[0m"
echo -e "\e[31m1. 请确保在运行之前已经安装了wget命令。\e[0m"
echo -e "\e[31m2. 运行此脚本将下载指定的controlnet模型文件到指定的目录。\e[0m"
echo -e "\e[31m3. 下载的文件将保存在 \"/home/ubuntu/stable-diffusion-webui/extensions/sd-webui-controlnet/models/\" 目录下。\e[0m"
echo -e "\e[31m4. 如果遇到任何问题，请联系 微信：relxa0 寻求帮助。\e[0m"
echo "################################################################################"
echo
function download_file(){
url=$1
filename=$2
wget -O "/home/ubuntu/stable-diffusion-webui/stable-diffusion-webui/extensions/sd-webui-controlnet/models/$filename" "$url"
}
while true;do
echo "输入编号，下载对应controlnet模型："
echo "1. control_v11e_sd15_ip2p.pth"
echo "2. control_v11e_sd15_shuffle.pth"
echo "3. control_v11f1e_sd15_tile.pth"
echo "4. control_v11f1p_sd15_depth.pth"
echo "5. control_v11p_sd15_canny.pth"
echo "6. control_v11p_sd15_inpaint.pth"
echo "7. control_v11p_sd15_lineart.pth"
echo "8. control_v11p_sd15_mlsd.pth"
echo "9. control_v11p_sd15_normalbae.pth"
echo "10. control_v11p_sd15_openpose.pth"
echo "11. control_v11p_sd15_scribble.pth"
echo "12. control_v11p_sd15_seg.pth"
echo "13. control_v11p_sd15_softedge.pth"
echo "14. control_v11p_sd15s2_lineart_anime.pth"
echo "15. control_v1p_sd15_qrcode_monster.safetensors"
echo "16. control_v1p_sd15_brightness.safetensors"
echo "17.  退出"
echo "请输入对应编号："
read choice
case $choice in
1)download_file "https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11e_sd15_ip2p.pth" "control_v11e_sd15_ip2p.pth"
download_file "https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11e_sd15_ip2p.yaml" "control_v11e_sd15_ip2p.yaml"
;;
2)download_file "https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11e_sd15_shuffle.pth" "control_v11e_sd15_shuffle.pth"
download_file "https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11e_sd15_shuffle.yaml" "control_v11e_sd15_shuffle.yaml"
;;
3)download_file "https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11f1e_sd15_tile.pth" "control_v11f1e_sd15_tile.pth"
download_file "https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11f1e_sd15_tile.yaml" "control_v11f1e_sd15_tile.yaml"
;;
4)download_file "https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11f1p_sd15_depth.pth" "control_v11f1p_sd15_depth.pth"
download_file "https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11f1p_sd15_depth.yaml" "control_v11f1p_sd15_depth.yaml"
;;
5)download_file "https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11p_sd15_canny.pth" "control_v11p_sd15_canny.pth"
download_file "https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11p_sd15_canny.yaml" "control_v11p_sd15_canny.yaml"
;;
6)download_file "https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11p_sd15_inpaint.pth" "control_v11p_sd15_inpaint.pth"
download_file "https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11p_sd15_inpaint.yaml" "control_v11p_sd15_inpaint.yaml"
;;
7)download_file "https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11p_sd15_lineart.pth" "control_v11p_sd15_lineart.pth"
download_file "https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11p_sd15_lineart.yaml" "control_v11p_sd15_lineart.yaml"
;;
8)download_file "https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11p_sd15_mlsd.pth" "control_v11p_sd15_mlsd.pth"
download_file "https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11p_sd15_mlsd.yaml" "control_v11p_sd15_mlsd.yaml"
;;
9)download_file "https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11p_sd15_normalbae.pth" "control_v11p_sd15_normalbae.pth"
download_file "https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11p_sd15_normalbae.yaml" "control_v11p_sd15_normalbae.yaml"
;;
10)download_file "https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11p_sd15_openpose.pth" "control_v11p_sd15_openpose.pth"
download_file "https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11p_sd15_openpose.yaml" "control_v11p_sd15_openpose.yaml"
;;
11)download_file "https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11p_sd15_scribble.pth" "control_v11p_sd15_scribble.pth"
download_file "https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11p_sd15_scribble.yaml" "control_v11p_sd15_scribble.yaml"
;;
12)download_file "https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11p_sd15_seg.pth" "control_v11p_sd15_seg.pth"
download_file "https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11p_sd15_seg.yaml" "control_v11p_sd15_seg.yaml"
;;
13)download_file "https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11p_sd15_softedge.pth" "control_v11p_sd15_softedge.pth"
download_file "https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11p_sd15_softedge.yaml" "control_v11p_sd15_softedge.yaml"
;;
14)download_file "https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11p_sd15s2_lineart_anime.pth" "control_v11p_sd15s2_lineart_anime.pth"
download_file "https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11p_sd15s2_lineart_anime.yaml" "control_v11p_sd15s2_lineart_anime.yaml"
;;
15)download_file "https://huggingface.co/monster-labs/control_v1p_sd15_qrcode_monster/resolve/main/control_v1p_sd15_qrcode_monster.safetensors" "control_v1p_sd15_qrcode_monster.safetensors"
;;
16)download_file "https://huggingface.co/ViscoseBean/control_v1p_sd15_brightness/resolve/main/control_v1p_sd15_brightness.safetensors" "control_v1p_sd15_brightness.safetensors"
download_file "https://huggingface.co/ViscoseBean/control_v1p_sd15_brightness/resolve/main/control_v1p_sd15_brightness.yaml" "control_v1p_sd15_brightness.yaml"
;;
17)echo "退出程序"
break
;;
*)echo "无效的选择，请重新输入"
esac
done
