if status is-interactive
    # Commands to run in interactive sessions can go here
    abbr p 'python'
    abbr dntc 'dotnet_default_console.sh'
    abbr actkn 'cat ~/ACCESS_TOKEN.txt | xclip -selection clipboard'
    abbr dntt 'dotnet test /p:CollectCoverage=true /p:CoverletOutputFormat=lcov /p:CoverletOutput=./lcov.info'
    abbr giturl 'git remote get-url origin'
    abbr copy 'xclip -selection clipboard'
    alias tms="tmux-sessionizer"
    alias ls="exa --icons"
end

fish_vi_key_bindings
