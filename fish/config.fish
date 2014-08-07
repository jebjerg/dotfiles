set fish_greeting ""
set fish_path $HOME/.config/fish
 
set -x PATH "/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/core_perl:usr/lib/notion/bin"
set -x PYTHONPATH ".:$PYTHONPATH"
set -x PAGER vimpager
alias less=$PAGER
 
# title
function fish_title --description "Set shell title with ENVVAR 'TITLE'"
    if [ $_ = 'fish' ]
        echo $TITLE (prompt_pwd)
    else
        echo $TITLE $_
    end
end

# fish git prompt
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showupstream 'yes'
set __fish_git_prompt_color_branch yellow
set __fish_git_prompt_color_dirtystate red
 
# git status chars
set __fish_git_prompt_char_dirtystate 'ಠ_ಠ'
set __fish_git_prompt_char_stagedstate '→'
set __fish_git_prompt_char_stashstate '↩'
set __fish_git_prompt_char_upstream_ahead '↑'
set __fish_git_prompt_char_upstream_behind '↓'
 
function is_git
    git rev-parse --git-dir > /dev/null 2>&1
    echo $status
end

function is_dirty
    command  git diff --no-ext-diff --quiet --exit-code
    echo $status
end

function git_info
    if git rev-parse --git-dir > /dev/null 2>&1
        set last_commit (git log --pretty=format:'%at' -1 2> /dev/null)
        set now (date +%s)
        set seconds_since_last_commit (math "$now-$last_commit")
 
        set MINUTES (math "$seconds_since_last_commit / 60")
        set HOURS (math "$seconds_since_last_commit / 3600")
        set DAYS (math "$seconds_since_last_commit / 86400")
        set SUB_HOURS (math "$HOURS % 24")
        set SUB_MINUTES (math "$MINUTES % 60")
       
        if test $HOURS -gt 24
            printf "%id%ih%im" $DAYS $SUB_HOURS $SUB_MINUTES
        else
            if test $MINUTES -gt 60
                printf "%ih%im" $HOURS $SUB_MINUTES
            else
                printf "%im" $MINUTES
            end
        end
    end
end
 
# prompt
function fish_prompt
    set last_status $status
    set_color cyan
    printf "%s " $USER
    set_color normal
    printf "on "
    set_color yellow
    printf "%s " (hostname -s)
    set_color normal
    printf "in "
 
    set_color blue
    printf "%s" (prompt_pwd)
    set_color normal

    # git
    if [ (is_git) = 0 ]
        printf " (%s|%s)" (git_info) (__fish_git_prompt "%s")
    end
 
    set_color normal
    if [ $last_status != 0 ]
        set_color red
    else
        set_color green
    end
    printf " \$ "
    set_color normal
end
 
test -f $fish_path/local.fish; and . $fish_path/local.fish

[ "$DISPLAY" ]; and [ "$XD" == 1 ]; and exec startx
