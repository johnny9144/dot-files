-- https://github.com/olimorris/persisted.nvim

return {
  "olimorris/persisted.nvim",
  opts = {
    -- directory where session files are saved
    -- ~/.local/share/nvim
    save_dir = vim.fn.expand(vim.fn.stdpath("data") .. "/sessions/"),
    -- silent nvim message when sourcing session file
    silent = true,
    -- create session files based on the branch of the git enabled repository
    use_git_branch = false,
    -- automatically save session files when exiting Neovim
    autosave = true,
    -- function to determine if a session should be autosaved
    should_autosave = nil,
    -- automatically load the session for the cwd on Neovim startup
    autoload = true,
    -- function to run when `autoload = true` but there is no session to load
    on_autoload_no_session = function()
      vim.notify("No existing session to load.")
    end,
    -- change session file name to match current working directory if it changes
    follow_cwd = true,
    -- table of dirs that the plugin will auto-save and auto-load from
    allowed_dirs = {
      "~/workspaces/viewsonic",
    },
    -- table of dirs that are ignored when auto-saving and auto-loading
    ignored_dirs = nil,
    -- options for the telescope extension
    telescope = {
      -- whether to reset prompt after session deleted
      -- <CR> - Source the session file
      -- <C-d> - Delete the session file
      reset_prompt_after_deletion = true,
    },
  },
  config = function(_, opts)
    require("persisted").setup(opts)
    require("telescope").load_extension("persisted")
  end,
}
