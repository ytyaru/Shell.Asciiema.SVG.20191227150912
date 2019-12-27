#!/usr/bin/env bash
#---------------------------------------------------------------------------
# 端末の入出力をSVGアニメーションとして出力する。
# CreatedAt: 2019-12-27
#---------------------------------------------------------------------------
Run() {
	Install() {
		sudo apt -y install nodejs npm
		sudo npm cache clean
		sudo npm install -g n
		sudo n stable
		#sudo apt-get purge -y nodejs npm
		sudo npm install -g asciicast2gif
		sudo npm install -g svg-term-cli
	}
	CreateAnimation() {
		asciiema A.json
		# 好きに入力する。例: echo 'A'
		echo 'A'
		# Ctrl + D で終了する
		cat A.json | svg-term > A.svg
		chromium-browser A.svg
	}
	Install
	CreateAnimation
}
Run
