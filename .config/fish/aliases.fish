alias g git
alias ru 'xbps-install -S'
alias upd 'sudo xbps-install -Su'
alias findpid 'ps aux | grep '
function ass
	set file (string split . $argv)
	set file $file[1]
	as $argv -o $file.o
	ld $file.o -o $file
 end
