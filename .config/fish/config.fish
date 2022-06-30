if status is-interactive
    # tmux
    if not set -q TMUX
        exec tmux
    end
end


# Work around for perl
set -x PATH "$HOME/.anyenv/envs/plenv/bin:$PATH"
set -x PATH "$HOME/.anyenv/envs/plenv/shims:$PATH"

# Work around for gcloud
set -x CLOUDSDK_PYTHON 'python2.7' 
