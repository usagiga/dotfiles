### For linux
# if ! pgrep -u "$USER" ssh-agent > /dev/null; then
#     ssh-agent > '/tmp/ssh-agent.env'
# fi
# if [[ ! "$SSH_AUTH_SOCK" ]]; then
#     source '/tmp/ssh-agent.env' > /dev/null
# fi