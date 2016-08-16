# Tue Aug 16 08:21:26 PDT 2016 | ~/current/working/dir
# [7 files 0b] username@hostname: $ 
export PS1="\[\033[35m\]\$(/bin/date) | \[\033[32m\]\w\n\[\033[0m\][\[\033[1;36m\]\$(/bin/ls -1 | /usr/bin/wc -l | /usr/bin/sed 's: ::g') files \[\033[1;33m\]\$(/bin/ls -lah | /usr/bin/grep -m 1 total | /usr/bin/sed 's/total //')b\[\033[0m\]] \[\033[1;31m\]\u@\h: $ \[\033[0m\]"


if [ -f $(brew --prefix)/etc/bash_completion ]; then
	. $(brew --prefix)/etc/bash_completion
fi

export HISTCONTROL=ignoredups:erasedups  # no duplicate entries
export HISTSIZE=100000                   # big big history
export HISTFILESIZE=100000               # big big history
shopt -s histappend                      # append to history, don't overwrite it

# Save and reload the history after each command finishes
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

alias ls='ls -G'
