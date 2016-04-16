#!/bin/sh
#
# This script is meant for quick & easy install via:
#   'curl -sSL https://raw.github.com/mjoe/docker-alias/master/install.sh | sh'
# or:
#   'wget -qO- https://raw.github.com/mjoe/docker-alias/master/install.sh | sh'
#

shells="bash zsh"
git_cmd=`which git`
sed_cmd=`which sed`
git_repo="https://github.com/mjoe/docker-alias.git"
os_name=`uname -s`

[ -z "$git_cmd" ] && echo '[ERROR]: git binary not found. Abort!' && exit 1
[ -z "$sed_cmd" ] && echo '[ERROR]: sed binary not found. Abort!' && exit 1

# first cd to DA_HOME if set
[ -n "$DA_HOME" ] && DA_HOME=`pwd`
echo "DA_HOME=$DA_HOME" >~/.da_home
cd $DA_HOME
$git_cmd clone $git_repo

remove_entry() {
	sed -ie "/# BEGIN docker-alias/,/# END docker-alias/d" $1
}

update_entry() {
	[ -f $1 ] && remove_entry $1
	cat <<EOF >>$1
# BEGIN docker-alias
source `pwd`/docker-alias/profile
# END docker-alias
EOF
}

create_profile() {
	case $1 in
		'bash')
			if [ $os_name = "Darwin" ]; then
				update_entry ~/.bash_profile
			else
				update_entry ~/.bashrc
			fi
			;;
		'zsh')
			update_entry ~/.zshrc
		 	;;
	esac
}

for shell in $shells; do
	[ -x `which $shell` ] && create_profile $shell
done

if [ $os_name = "Darwin" ]; then
	source ~/.bash_profile
else
	source ~/.bashrc
fi
