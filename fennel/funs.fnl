(fn setup-package [param-package]
  (do 
    (local package (require param-package))
    (print package)
    package.setup))

