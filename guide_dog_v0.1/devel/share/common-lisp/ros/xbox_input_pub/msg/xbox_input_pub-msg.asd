
(cl:in-package :asdf)

(defsystem "xbox_input_pub-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "xbox_input" :depends-on ("_package_xbox_input"))
    (:file "_package_xbox_input" :depends-on ("_package"))
  ))