#!/bin/bash


codePracticeDir="/mnt/simulations/hira/Sam/GerardCodePractice"

function Msg(){
	# Opening message :)
	cat .fishtankhelp-msg
}

function githelp(){
	# Commands to get a new git repository (helpful when installing HiRA-EVT)
	NC="\033[0m"
	RED="\033[1;31m"
	GRE="\033[1;32m"
	YEL="\033[1;33m"
	BLU="\033[1;34m"
	echo -e "\n"
	echo -e "\033[1;35mPULLING A GIT REPO\033[0m"
	echo -e "\t1. Navigate to a directory you want to be in. Type \033[1;32mpwd\033[0m to make sure you're in the correct directory."
	echo -e "\t2. Go on github and find the repository you want to clone. You need an extension that ends in $YEL.git$NC"
	echo -e "\t\t- For example, the git URL for Daniele's HiRA-EVT code is$YEL https://github.com/nscl-hira/HiRAEVT.git$NC"
	echo -e "\t3. Type$GRE git clone$YEL git-url-you-want-to-clone$NC"
	echo -e "\n"
}

function practiceDir(){
	NC="\033[0m"
	RED="\033[1;31m"
	GRE="\033[1;32m"
	YEL="\033[1;33m"
	BLU="\033[1;34m"

	# Takes you to a directory where you can practice 
	# 1. Writing python scripts
	# 2. Basic command line navigation
	# 3. Compiling C++ code, running executables

	codePracticeDir="/mnt/simulations/hira/Sam/GerardCodePractice"
	cd $codePracticeDir
	echo -e ""
	echo -e "This is a ${YEL}directory${NC} containing ${YEL}sub-directories${NC} aimed at helping you learn some basic code/fishtank stuff you'll have to do :)"
	echo -e ""
	ls
}

function cmdhelp(){
	NC="\033[0m"
	RED="\033[1;31m"
	GRE="\033[1;32m"
	YEL="\033[1;33m"
	BLU="\033[1;34m"
	# One stop shop for important commands to remember
	echo -e "\n"
	echo -e "\033[1;35mUSEFUL BASH COMMANDS\033[0m"
	echo -e ""
	echo -e "$GRE\tcd$NC --> move between directories."
	echo -e "\t\t- Type$GRE cd$NC$YEL directory-you-want-to-be-in $NC"
	echo -e "\t\t- To go back a directory, type $GRE cd .. $NC or type $GRE..$NC"
	echo -e "$GRE\tls$NC --> Display the contents of the directory you're in."
	echo -e "\t\t- Try typing $GRE ls -l $NC if you want files displayed in a list."
	echo -e "$GRE\tpwd$NC --> Print the current directory you're in."
	echo -e "\t\t- At the moment, you are currently in $YEL$(pwd)$NC"
	echo -e "$GRE\tcp$NC --> Copy files and directories."
	echo -e "\t\t- Type$GRE cp -t$NC$YEL directory-you-want-to-copy-to$NC$BLU name-of-thing-you-want-to-copy$NC$RED name-of-new-thing-after-you-copied-it$NC"
	echo -e "\t\t- If you want to copy a directory, use $GRE cp -r -t$NC"
	echo -e "$GRE\tmv$NC --> Move files and directories."
	echo -e "\t\t- Type$GRE mv -t$NC$YEL directory-you-want-to-move-to$NC$BLU name-of-thing-you-want-to-move$NC$RED name-of-new-thing-after-you-moved-it$NC"
	echo -e "\t\t- If you want to move a directory, use $GRE mv -r -t$NC"
	echo -e "$GRE\tcat$NC --> print the contents of a file."
	echo -e "\t\t- Type$GRE cat$NC$RED filename$NC."
	echo -e "\t\t- This doesn't allow you to edit a file, just to see the text inside the file."
	echo -e "$GRE\tclear$NC --> Clear the print out of your terminal."
	echo -e "$GRE\tman$NC --> Read the manual pages for any of the commands above."
	echo -e "\t\t- Type$GRE man$NC$BLU command$NC"

	echo -e "\n"

}


function HELP(){
	NC="\033[0m"
	RED="\033[1;31m"
	GRE="\033[1;32m"
	YEL="\033[1;33m"
	BLU="\033[1;34m"
	Msg	
	while true; do
		echo -e "${GRE}Type one of the following commands (type ${RED}STOP${GRE} to leave): " 
		echo -e "$NC\n1. cmdhelp\t\t 2. githelp\t\t 3. practiceDir"
		read -p "$1: " var
		if [ $var == "cmdhelp" ]; then
			cmdhelp
		elif [ $var == "githelp" ]; then
			githelp
		elif [ $var == "practiceDir" ]; then
			practiceDir
			break;
		elif [ $var == "STOP" ]; then
			break;
		else
			echo -e "${RED}Not a valid command.${NC}"
			echo -e ""
		fi
	done
	echo -e ""
}
