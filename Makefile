install:
	@git pull
	@clear
	apt-get install bash curl wget jq
	apt-get install python python-pip nano
	apt-get install clang ncurses-utils xh
	apt-get install xz-utils pv bc neofetch
	apt-get install ossp-uuid nodejs openssl
	apt-get install openssl-tool nodejs-lts
	python -m pip install -r data/requirements.txt
	@npm -g i chalk chalk-animation
	@npm install .
	@gcc main.c -o main
	@chmod +x app.py
	@clear
	@printf "\n\033[37m[\033[33m*\033[37m] Package & module berhasil diinstall \033[31m.."
	@printf "\n\033[37m[\033[31m!\033[37m] Run script dg ketik \033[1;30m'\033[0m\033[32mpython app.py\033[1;30m' \033[0m\033[37matau \033[1;30m'\033[0m\033[32mmake run\033[1;30m'\n\n"

update:
	@git pull

run:
	@python app.py

reset:
	@rm main
