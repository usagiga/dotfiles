if status is-interactive
    # tmux
    if not set -q TMUX
        exec tmux
    end
end
