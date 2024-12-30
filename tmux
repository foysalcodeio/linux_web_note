c-b # ctrl + b
s -> list session
	$ -> rename current session
	d -> detech from current session
	c -> new windows
	w -> list windows
	% -> split horizentally
	" -> split vertically
	q -> show the panel number
	} -> swap next panel
	{ -> swap preview panel
	c-uparraow -> screen larger
	c-downarrow -> screen smaller

mouse scrolling confiration
vim ~/.tmux.conf
set -g mode-mouse on      ###Insert this setting with vim, then source the file.
tmux source-file ~/.tmux.conf
