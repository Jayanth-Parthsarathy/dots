if status is-interactive
    set fish_greeting
    set -x XDG_CONFIG_HOME "$HOME/.config"
    set -Ux MOZ_ENABLE_WAYLAND 1
    set -Ux GTK_THEME gruvbox-dark-gtk
    set -Ux BROWSER firefox
    set -Ux TERM "TERM=foot-256color"
    alias config "/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME"
    alias fetch "diyfetch"
    alias fz "fuzzy_tmux"
    set -Ux PF_INFO "ascii title os host kernel uptime pkgs memory"
    alias docker-set "sudo chmod 777 /var/run/docker.sock"
    alias nvi nvim
    alias gc "git clone"
    starship init fish | source
    theme_gruvbox dark
end

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
