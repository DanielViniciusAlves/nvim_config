# Start tmux as default
tmux source-file ~/.config/tmux/tmux.conf

echo "Tentando entrar no diretório"

cd "$HOME/git"

if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
	tmux attach -t default || tmux new -s default
fi


