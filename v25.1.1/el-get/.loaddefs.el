;;; .loaddefs.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads nil "bundle/bundle" "bundle/bundle.el" (22425 23177
;;;;;;  335760 325000))
;;; Generated autoloads from bundle/bundle.el

(defalias 'bundle 'el-get-bundle)

(defalias 'bundle! 'el-get-bundle!)

;;;***

;;;### (autoloads nil "diminish.el/diminish" "diminish.el/diminish.el"
;;;;;;  (22425 23185 903760 325000))
;;; Generated autoloads from diminish.el/diminish.el

(autoload 'diminish "diminish.el/diminish" "\
Diminish mode-line display of minor mode MODE to TO-WHAT (default \"\").

Interactively, enter (with completion) the name of any minor mode, followed
on the next line by what you want it diminished to (default empty string).
The response to neither prompt should be quoted.  However, in Lisp code,
both args must be quoted, the first as a symbol, the second as a string,
as in (diminish 'jiggle-mode \" Jgl\").

The mode-line displays of minor modes usually begin with a space, so
the modes' names appear as separate words on the mode line.  However, if
you're having problems with a cramped mode line, you may choose to use single
letters for some modes, without leading spaces.  Capitalizing them works
best; if you then diminish some mode to \"X\" but have abbrev-mode enabled as
well, you'll get a display like \"AbbrevX\".  This function prepends a space
to TO-WHAT if it's > 1 char long & doesn't already begin with a space.

\(fn MODE &optional TO-WHAT)" t nil)

(autoload 'diminish-undo "diminish.el/diminish" "\
Restore mode-line display of diminished mode MODE to its minor-mode value.
Do nothing if the arg is a minor mode that hasn't been diminished.

Interactively, enter (with completion) the name of any diminished mode (a
mode that was formerly a minor mode on which you invoked \\[diminish]).
To restore all diminished modes to minor status, answer `diminished-modes'.
The response to the prompt shouldn't be quoted.  However, in Lisp code,
the arg must be quoted as a symbol, as in (diminish-undo 'diminished-modes).

\(fn MODE)" t nil)

(autoload 'diminished-modes "diminish.el/diminish" "\
Echo all active diminished or minor modes as if they were minor.
The display goes in the echo area; if it's too long even for that,
you can see the whole thing in the *Messages* buffer.
This doesn't change the status of any modes; it just lets you see
what diminished modes would be on the mode-line if they were still minor.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "el-get-lock/el-get-lock" "el-get-lock/el-get-lock.el"
;;;;;;  (22425 23179 259760 325000))
;;; Generated autoloads from el-get-lock/el-get-lock.el

(autoload 'el-get-lock "el-get-lock/el-get-lock" "\
Lock El-Get repository versions of PACKAGES.

If PACKAGES are specified, those PACKAGES are marked to be
locked.  Otherwise, the all installed packages and packages to be
installed in future are locked.

Packages marked as locked and their dependent packages are locked
to the version stored in `el-get-lock-file'.  When `el-get'
installs a package for the first time, the repository version is
saved to `el-get-lock-file'.  Next time you call `el-get' for the
package, the repository version of the package is locked
according to the value in the `el-get-lock-file'.

Calling `el-get-update' for a package will change the stored
value of `el-get-lock-file' to the latest version.

\(fn &rest PACKAGES)" t nil)

(autoload 'el-get-lock-unlock "el-get-lock/el-get-lock" "\
Unlock El-Get repository versions of PACKAGES.

If PACKAGES are specified, those PACKAGES are marked to be
unlocked.  Otherwise, the all installed packages are unlocked.

\(fn &rest PACKAGES)" t nil)

(autoload 'el-get-lock-checkout "el-get-lock/el-get-lock" "\
Checkout the locked version of PACKAGES.

\(fn &rest PACKAGES)" t nil)

;;;***

;;;### (autoloads nil "el-get/el-get" "el-get/el-get.el" (22425 23164
;;;;;;  75760 325000))
;;; Generated autoloads from el-get/el-get.el

(autoload 'el-get-version "el-get/el-get" "\
Message the current el-get version

\(fn)" t nil)

(autoload 'el-get-install "el-get/el-get" "\
Cause the named PACKAGE to be installed after all of its
dependencies (if any).

PACKAGE may be either a string or the corresponding symbol.

\(fn PACKAGE)" t nil)

(autoload 'el-get-update "el-get/el-get" "\
Update PACKAGE.

\(fn PACKAGE)" t nil)

(autoload 'el-get-update-all "el-get/el-get" "\
Performs update of all installed packages.

\(fn &optional NO-PROMPT)" t nil)

(autoload 'el-get-update-packages-of-type "el-get/el-get" "\
Update all installed packages of type TYPE.

\(fn TYPE)" t nil)

(autoload 'el-get-self-update "el-get/el-get" "\
Update el-get itself.  The standard recipe takes care of reloading the code.

\(fn)" t nil)

(autoload 'el-get-remove "el-get/el-get" "\
Remove any PACKAGE that is know to be installed or required.

\(fn PACKAGE)" t nil)

(autoload 'el-get-reinstall "el-get/el-get" "\
Remove PACKAGE and then install it again.

\(fn PACKAGE)" t nil)

(autoload 'el-get-cd "el-get/el-get" "\
Open dired in the package directory.

\(fn PACKAGE)" t nil)

(autoload 'el-get-make-recipes "el-get/el-get" "\
Loop over `el-get-sources' and write a recipe file for each
entry which is not a symbol and is not already a known recipe.

\(fn &optional DIR)" t nil)

(autoload 'el-get-checksum "el-get/el-get" "\
Compute the checksum of the given package, and put it in the kill-ring

\(fn PACKAGE)" t nil)

(autoload 'el-get-self-checksum "el-get/el-get" "\
Compute the checksum of the running version of el-get itself.

Also put the checksum in the kill-ring.

\(fn)" t nil)

(autoload 'el-get "el-get/el-get" "\
Ensure that packages have been downloaded once and init them as needed.

This will not update the sources by using `apt-get install' or
`git pull', but it will ensure that:

* the packages have been installed
* load-path is set so their elisp files can be found
* Info-directory-list is set so their info files can be found
* Autoloads have been prepared and evaluated for each package
* Any post-installation setup (e.g. `(require 'feature)') happens

When SYNC is nil (the default), all installations run
concurrently, in the background.

When SYNC is 'sync, each package will be installed synchronously,
and any error will stop it all.

Please note that the `el-get-init' part of `el-get' is always
done synchronously. There's `byte-compile' support though, and
the packages you use are welcome to use `autoload' too.

PACKAGES is expected to be a list of packages you want to install
or init.  When PACKAGES is omited (the default), the list of
already installed packages is considered.

\(fn &optional SYNC &rest PACKAGES)" nil nil)

;;;***

;;;### (autoloads nil "el-get/el-get-bundle" "el-get/el-get-bundle.el"
;;;;;;  (22425 23164 67760 325000))
;;; Generated autoloads from el-get/el-get-bundle.el

(autoload 'el-get-bundle-el-get "el-get/el-get-bundle" "\


\(fn SRC)" nil nil)

(autoload 'el-get-bundle "el-get/el-get-bundle" "\
Install PACKAGE and run initialization FORM.

PACKAGE can be either a simple package name or a package name
with a modifier before the name to specify local recipe source
information:

* `<owner>/' : specifies a Github owner name
* `gist:<id>' : specifies a Gist ID
* `<type>:' : specifies a type of the package source

If `FEATURE in PACKAGE' form is used instead of PACKAGE, then
that FEATURE is `require'd after installing PACKAGE.  You can
also use `el-get-bundle!' macro if FEATURE and PACKAGE are the
same.  If you wish to `require' more than one feature, then use
`:features' property in FORM.

The initialization FORM may start with a property list that
describes a local recipe.  The FORM after the property list is
treated as initialization code, which is actually an `:after'
property of the local recipe.

A copy of the initialization code is stored in a directory
specified by `el-get-bundle-init-directory' and its byte-compiled
version is used if `el-get-bundle-byte-compile' is non-nil.

\(fn PACKAGE &rest FORM)" nil t)

(function-put 'el-get-bundle 'lisp-indent-function 'defun)

(autoload 'el-get-bundle! "el-get/el-get-bundle" "\
Install PACKAGE and run initialization form.
It is the same as `el-get-bundle' except that PACKAGE is explicitly
required.

\(fn PACKAGE &rest ARGS)" nil t)

(function-put 'el-get-bundle! 'lisp-indent-function 'defun)

;;;***

;;;### (autoloads nil "el-get/el-get-check" "el-get/el-get-check.el"
;;;;;;  (22425 23164 75760 325000))
;;; Generated autoloads from el-get/el-get-check.el

(autoload 'el-get-check-recipe "el-get/el-get-check" "\
Check the format of the recipe.
Please run this command before sending a pull request.
Usage: M-x el-get-check-recipe RET

You can run this function from checker script like this:
    test/check-recipe.el PATH/TO/RECIPE.rcp

When used as a lisp function, FILE-OR-BUFFER must be a buffer
object or a file path.

\(fn FILE-OR-BUFFER)" t nil)

;;;***

;;;### (autoloads nil "el-get/el-get-list-packages" "el-get/el-get-list-packages.el"
;;;;;;  (22425 23164 75760 325000))
;;; Generated autoloads from el-get/el-get-list-packages.el

(autoload 'el-get-list-packages "el-get/el-get-list-packages" "\
Display a list of packages.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "init-loader/init-loader" "init-loader/init-loader.el"
;;;;;;  (22425 23188 23760 325000))
;;; Generated autoloads from init-loader/init-loader.el

(autoload 'init-loader-load "init-loader/init-loader" "\
Load configuration files in INIT-DIR.

\(fn &optional (init-dir init-loader-directory))" nil nil)

(autoload 'init-loader-show-log "init-loader/init-loader" "\
Show init-loader log buffer.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "use-package/bind-key" "use-package/bind-key.el"
;;;;;;  (22425 23183 923760 325000))
;;; Generated autoloads from use-package/bind-key.el

(autoload 'bind-key "use-package/bind-key" "\
Bind KEY-NAME to COMMAND in KEYMAP (`global-map' if not passed).

KEY-NAME may be a vector, in which case it is passed straight to
`define-key'. Or it may be a string to be interpreted as
spelled-out keystrokes, e.g., \"C-c C-z\". See documentation of
`edmacro-mode' for details.

If PREDICATE is non-nil, it is a form evaluated to determine when
a key should be bound. It must return non-nil in such cases.
Emacs can evaluate this form at any time that it does redisplay
or operates on menu data structures, so you should write it so it
can safely be called at any time.

\(fn KEY-NAME COMMAND &optional KEYMAP PREDICATE)" nil t)

(autoload 'unbind-key "use-package/bind-key" "\
Unbind the given KEY-NAME, within the KEYMAP (if specified).
See `bind-key' for more details.

\(fn KEY-NAME &optional KEYMAP)" nil t)

(autoload 'bind-key* "use-package/bind-key" "\
Similar to `bind-key', but overrides any mode-specific bindings.

\(fn KEY-NAME COMMAND &optional PREDICATE)" nil t)

(autoload 'bind-keys "use-package/bind-key" "\
Bind multiple keys at once.

Accepts keyword arguments:
:map MAP               - a keymap into which the keybindings should be
                         added
:prefix KEY            - prefix key for these bindings
:prefix-map MAP        - name of the prefix map that should be created
                         for these bindings
:prefix-docstring STR  - docstring for the prefix-map variable
:menu-name NAME        - optional menu string for prefix map
:filter FORM           - optional form to determine when bindings apply

The rest of the arguments are conses of keybinding string and a
function symbol (unquoted).

\(fn &rest ARGS)" nil t)

(autoload 'bind-keys* "use-package/bind-key" "\


\(fn &rest ARGS)" nil t)

(autoload 'describe-personal-keybindings "use-package/bind-key" "\
Display all the personal keybindings defined by `bind-key'.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "use-package/use-package" "use-package/use-package.el"
;;;;;;  (22425 23183 931760 325000))
;;; Generated autoloads from use-package/use-package.el

(autoload 'use-package "use-package/use-package" "\
Declare an Emacs package by specifying a group of configuration options.

For full documentation, please see the README file that came with
this file.  Usage:

  (use-package package-name
     [:keyword [option]]...)

:init          Code to run before PACKAGE-NAME has been loaded.
:config        Code to run after PACKAGE-NAME has been loaded.  Note that if
               loading is deferred for any reason, this code does not execute
               until the lazy load has occurred.
:preface       Code to be run before everything except `:disabled'; this can
               be used to define functions for use in `:if', or that should be
               seen by the byte-compiler.

:mode          Form to be added to `auto-mode-alist'.
:interpreter   Form to be added to `interpreter-mode-alist'.

:commands      Define autoloads for commands that will be defined by the
               package.  This is useful if the package is being lazily loaded,
               and you wish to conditionally call functions in your `:init'
               block that are defined in the package.

:bind          Bind keys, and define autoloads for the bound commands.
:bind*         Bind keys, and define autoloads for the bound commands,
               *overriding all minor mode bindings*.
:bind-keymap   Bind a key prefix to an auto-loaded keymap defined in the
               package.  This is like `:bind', but for keymaps.
:bind-keymap*  Like `:bind-keymap', but overrides all minor mode bindings

:defer         Defer loading of a package -- this is implied when using
               `:commands', `:bind', `:bind*', `:mode' or `:interpreter'.
               This can be an integer, to force loading after N seconds of
               idle time, if the package has not already been loaded.

:after         Defer loading of a package until after any of the named
               features are loaded.

:demand        Prevent deferred loading in all cases.

:if EXPR       Initialize and load only if EXPR evaluates to a non-nil value.
:disabled      The package is ignored completely if this keyword is present.
:defines       Declare certain variables to silence the byte-compiler.
:functions     Declare certain functions to silence the byte-compiler.
:load-path     Add to the `load-path' before attempting to load the package.
:diminish      Support for diminish.el (if installed).
:ensure        Loads the package using package.el if necessary.
:pin           Pin the package to an archive.

\(fn NAME &rest ARGS)" nil t)

(function-put 'use-package 'lisp-indent-function '1)

;;;***

;;;### (autoloads nil "with-eval-after-load-feature/with-eval-after-load-feature"
;;;;;;  "with-eval-after-load-feature/with-eval-after-load-feature.el"
;;;;;;  (22425 23181 223760 325000))
;;; Generated autoloads from with-eval-after-load-feature/with-eval-after-load-feature.el

(autoload 'with-eval-after-load-feature "with-eval-after-load-feature/with-eval-after-load-feature" "\


\(fn FEATURE &rest BODY)" nil t)

(function-put 'with-eval-after-load-feature 'lisp-indent-function '1)

;;;***

;;;### (autoloads nil nil ("bundle/bundle-install.el" "el-get/el-get-autoloading.el"
;;;;;;  "el-get/el-get-build.el" "el-get/el-get-byte-compile.el"
;;;;;;  "el-get/el-get-core.el" "el-get/el-get-custom.el" "el-get/el-get-dependencies.el"
;;;;;;  "el-get/el-get-install.el" "el-get/el-get-methods.el" "el-get/el-get-notify.el"
;;;;;;  "el-get/el-get-recipes.el" "el-get/el-get-status.el" "init-loader/test-init-loader.el"
;;;;;;  "use-package/use-package-tests.el") (22425 23188 23760 325000))

;;;***

(provide '.loaddefs)
;; Local Variables:
;; version-control: never
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; .loaddefs.el ends here
