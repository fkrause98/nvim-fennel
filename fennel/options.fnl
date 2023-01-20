(require-macros :hibiscus.vim)
(require-macros :hibiscus.core)
;; Use system clipboard
(vim.cmd "set clipboard+=unnamedplus")

(local options 
      {
      :nu 'true :rnu 'true ;; Relative line number
      })
(each [option value (pairs options)]
  (set! option value))

(color! "tokyonight-night")
