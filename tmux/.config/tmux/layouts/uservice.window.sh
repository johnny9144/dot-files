# Set window root path. Default is `$session_root`.
# Must be called before `new_window`.
window_root "~/workspaces/viewsonic/uservice-monorepo-nestjs"

# Create new window. If no argument is given, window name will be based on
# layout file name.
new_window "Uservice"
run_cmd "nvim"

# Split window into panes.
split_v 20

# Select nvim pane.
select_pane 1

# restore nvim session
send_keys "s" 1
