(setq-default init-loader-show-log-after-init t init-loader-byte-compile t)
(init-loader-load
 (locate-user-emacs-file "init-loader"))
(let
    ((win
      (get-buffer-window "*Compile-Log*")))
  (when win
    (delete-window win)))
