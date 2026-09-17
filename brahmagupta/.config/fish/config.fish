source /usr/share/cachyos-fish-config/cachyos-config.fish

set -gx LANG en_US.UTF-8
set -gx LC_ALL en_US.UTF-8


function fish_prompt
    set_color cyan
    echo -n (prompt_pwd)

    if git rev-parse --is-inside-work-tree >/dev/null 2>&1
        set branch (git branch --show-current)
        set_color yellow
        echo -n " [$branch]"
    end

    set_color normal
    echo -n " \$ "
end


# overwrite greeting
# potentially disabling fastfetch
#function fish_greeting
#    # smth smth
#end
