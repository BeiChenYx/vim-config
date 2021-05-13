git clone https://gitee.com/BeiChen_XQ/ohmyzsh.git
if [ $? -ne 0 ]; then
	echo "下载oh-my-zsh失败"
	exit 1
fi
echo "下载完成, 正在配置oh-my-zsh"
cp -r ohmyzsh ~/.oh-my-zsh
cp ohmyzsh/templates/zshrc.zsh-template ~/.zshrc
chsh -s /bin/zsh
if [ $? -eq 0 ]; then
	echo "配置完成, 正在清理"
	rm -rf ./ohmyzsh
fi

