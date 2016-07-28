((bundle status "installed" recipe
   (:name bundle :type github :pkgname "tarao/bundle-el"))
 (diminish\.el status "installed" recipe
	       (:name diminish\.el :type github :pkgname "myrjola/diminish.el" :after nil :checksum "826e19186bef91d2241739cb8b48b8cfba14c17a"))
 (el-get status "installed" recipe
	 (:name el-get :website "https://github.com/dimitri/el-get#readme" :description "Manage the external elisp bits and pieces you depend upon." :type github :branch "master" :pkgname "dimitri/el-get" :info "." :compile
		("el-get.*\\.el$" "methods/")
		:features el-get :post-init
		(when
		    (memq 'el-get
			  (bound-and-true-p package-activated-list))
		  (message "Deleting melpa bootstrap el-get")
		  (unless package--initialized
		    (package-initialize t))
		  (when
		      (package-installed-p 'el-get)
		    (let
			((feats
			  (delete-dups
			   (el-get-package-features
			    (el-get-elpa-package-directory 'el-get)))))
		      (el-get-elpa-delete-package 'el-get)
		      (dolist
			  (feat feats)
			(unload-feature feat t))))
		  (require 'el-get))))
 (el-get-lock status "installed" recipe
	      (:name el-get-lock :type github :pkgname "tarao/el-get-lock" :after
		     (progn
		       (el-get-lock)
		       (el-get-lock-unlock 'el-get))
		     :checksum "df8cfe55441695865a64b97946750b6413a40425"))
 (init-loader status "installed" recipe
	      (:checksum "287da99eadfa3dd85492506db43d68324069b593" :name init-loader :type github :pkgname "emacs-jp/init-loader" :features
			 (init-loader)
			 :after
			 (progn
			   (setq-default init-loader-show-log-after-init t init-loader-byte-compile t)
			   (init-loader-load
			    (locate-user-emacs-file "init-loader"))
			   (let
			       ((win
				 (get-buffer-window "*Compile-Log*")))
			     (when win
			       (delete-window win))))))
 (use-package status "installed" recipe
	      (:name use-package :type github :pkgname "jwiegley/use-package" :after nil :checksum "c191614a009bf02d7af63e306bab6d296e1849e3"))
 (with-eval-after-load-feature status "installed" recipe
			       (:name with-eval-after-load-feature :after nil :website "https://github.com/tarao/with-eval-after-load-feature-el" :description "Eval after loading feature with fine compilation" :type github :pkgname "tarao/with-eval-after-load-feature-el" :checksum "0b38651a5f0dafdfe04bd0032eb5ff803e99460b")))
