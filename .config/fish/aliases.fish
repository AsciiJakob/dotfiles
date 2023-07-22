alias g git
alias ru 'xbps-install -S'
alias upd 'sudo xbps-install -Su'
alias bai 'sudo shutdown -h now'
alias untar 'tar -xvzf'
alias findpid 'ps aux | grep '
alias s 'kitty +kitten ssh'
function ass
	set file (string split . $argv)
	set file $file[1]
	as $argv -o $file.o
	ld $file.o -o $file
 end
