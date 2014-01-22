# Fino-time theme by Aexander Berezovsky (http://berezovsky.me) based on Fino by Max Masnick (http://max.masnick.me)

# Use with a dark background and 256-color terminal!
# Meant for people with RVM and git. Tested only on OS X 10.7.

# You can set your computer name in the ~/.box-name file if you want.

# Borrowing shamelessly from these oh-my-zsh themes:
#   bira
#   robbyrussell
#
# Also borrowing from http://stevelosh.com/blog/2010/02/my-extravagant-zsh-prompt/

# also borrowing from juanghurtado
# color shortcuts

GREEN=$FG[040]
GREY=$FG[239]
BLUE=$FG[033]
YELLOW=$FG[226]
YELLOW_IN=$FG[yellow]

GREEN_BOLD=$fg_bold[green]
RED_BOLD=$fg_bold[red]
YELLOW_BOLD=$fg_bold[yellow]
GREEN_BOLD=$fg_bold[green]
WHITE_BOLD=$fg_bold[white]
BLUE_BOLD=$fg_bold[blue]

RED=$fg[red]

# Format for git_prompt_info()
ZSH_THEME_GIT_PROMPT_PREFIX=" %{$FG[239]%}on%{$reset_color%} %{$fg_bold[red]%}"

# Format for parse_git_dirty()
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$FG[202]%} ✘"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$FG[040]%} ✔"


# Format for git_prompt_status()
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$RED%}unmerged "
ZSH_THEME_GIT_PROMPT_DELETED="%{$RED%}deleted "
ZSH_THEME_GIT_PROMPT_RENAMED="%{$YELLOW_IN%}renamed "
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$YELLOW_IN%}modified "
ZSH_THEME_GIT_PROMPT_ADDED="%{$GREEN%}added "
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$WHITE%}untracked "

# Format for git_prompt_ahead()
ZSH_THEME_GIT_PROMPT_AHEAD=" %{$RED%}(!)"

# Format for git_prompt_long_sha() and git_prompt_short_sha()
ZSH_THEME_GIT_PROMPT_SHA_BEFORE="%{$WHITE%}[%{$YELLOW_IN%}"
ZSH_THEME_GIT_PROMPT_SHA_AFTER="%{$WHITE%}] "


function virtualenv_info {
    [ $VIRTUAL_ENV ] && echo '('`basename $VIRTUAL_ENV`') '
}

function prompt_char {
    git branch >/dev/null 2>/dev/null && echo '❯' && return
    echo '❯'
}

function box_name {
    [ -f ~/.box-name ] && cat ~/.box-name || hostname -s
}

local rvm_ruby='‹$(rvm-prompt i v g)›%{$reset_color%}'
local current_dir='${PWD/#$HOME/~}'
local git_info='$(git_prompt_info)'
local git_extra_info='$(git_prompt_short_sha)$(git_prompt_status)'


#PROMPT="%{$GREEN%}%n%{$reset_color%} %{$GREY%}at%{$reset_color%} %{$BLUE%}$(box_name)%{$reset_color%} %{$GREY%}in%{$reset_color%} #%{$terminfo[bold]$YELLOW%}${current_dir}%{$reset_color%}${git_info}"


PROMPT="%{$GREEN%}%n%{$reset_color%} %{$GREY%}at%{$reset_color%} %{$BLUE%}$(box_name)%{$reset_color%} %{$GREY%}in%{$reset_color%} %{$terminfo[bold]$YELLOW%}${current_dir}%{$reset_color%}${git_info} %{$GREY%}%{$reset_color%}%{$GREY%}${git_extra_info}
%{$FG[239]%}$(prompt_char)%{$reset_color%} "
