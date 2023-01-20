(local ts-config (require :nvim-treesitter.configs))
(ts-config.setup
  {:ensure_installed ["c" "rust" "elixir" "javascript" "dockerfile" "erlang" "fish" "go"] 
  :sync_install 'true
  :auto_install 'true
  :indent {:enable 'true :disable ["yaml"]}
  :highlight {:enable 'true}})
