
(cl:in-package :asdf)

(defsystem "localizataion-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "localizemsg" :depends-on ("_package_localizemsg"))
    (:file "_package_localizemsg" :depends-on ("_package"))
  ))