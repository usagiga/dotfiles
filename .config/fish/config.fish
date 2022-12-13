if status is-interactive
    # tmux
    if not set -q TMUX
        tmux new-session -A -s main
    end
end


# Work around for perl
set -x PATH "$HOME/.anyenv/envs/plenv/bin:$PATH"
set -x PATH "$HOME/.anyenv/envs/plenv/shims:$PATH"

# Work around for gcloud
set -x CLOUDSDK_PYTHON 'python2.7' 
