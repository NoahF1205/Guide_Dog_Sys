
(cl:in-package :asdf)

(defsystem "pos_pub-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "angle" :depends-on ("_package_angle"))
    (:file "_package_angle" :depends-on ("_package"))
  ))