# Make vim the default editor
export EDITOR="vim"
# Don’t clear the screen after quitting a manual page
export MANPAGER="less -X"
# Highlight section titles in manual pages
export LESS_TERMCAP_md="$ORANGE"

# Larger bash history (allow 32³ entries; default is 500)
export HISTSIZE=32768
export HISTFILESIZE=$HISTSIZE
export HISTCONTROL=ignoredups
# Make some commands not show up in history
export HISTIGNORE="ls:cd:cd -:pwd:exit:date:* --help"

export JAVA_HOME=$(/usr/libexec/java_home )
export MAVEN_OPTS="-Xmx1024m -XX:MaxPermSize=1024m -XX:+HeapDumpOnOutOfMemoryError"
export JAVA_OPTS="-Xmx1024m -XX:MaxPermSize=1024m -XX:+HeapDumpOnOutOfMemoryError"

