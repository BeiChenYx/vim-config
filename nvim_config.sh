echo "正在下载vim-plug"
git clone https://gitee.com/BeiChen_XQ/vim-plug.git

if [ $? -ne 0 ]; then
    echo  "vim-plug下载失败"
    exit 1
else
    echo "vim-plug下载成功"
    echo "正在配置vim-plug"
    mkdir -p ~/.local/share/nvim/site/autoload/
fi

if [ $? -eq 0 ]; then
    cp ./vim-plug/plug.vim ~/.local/share/nvim/site/autoload/
else
	echo "无法完成复制文件操作, 请检查权限"
	exit 1
fi

echo "完成了vim-plug的配置"
echo "正在配置nvim"
if [ $? -eq 0 ]; then
    mkdir -p ~/.config/nvim/
    cp ./init.vim ~/.config/nvim
    echo "配置nvim完成"
else
	echo "配置nvim失败"
	exit 1
fi

echo "正在清理"
if [ $? -eq 0 ]; then
    rm -rf ./vim-plug
    echo "清理完成"
fi

nvim +PlugInstall

