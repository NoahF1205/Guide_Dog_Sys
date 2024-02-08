;; Auto-generated. Do not edit!


(when (boundp 'pos_pub::angle)
  (if (not (find-package "POS_PUB"))
    (make-package "POS_PUB"))
  (shadow 'angle (find-package "POS_PUB")))
(unless (find-package "POS_PUB::ANGLE")
  (make-package "POS_PUB::ANGLE"))

(in-package "ROS")
;;//! \htmlinclude angle.msg.html


(defclass pos_pub::angle
  :super ros::object
  :slots (_angle ))

(defmethod pos_pub::angle
  (:init
   (&key
    ((:angle __angle) 0.0)
    )
   (send-super :init)
   (setq _angle (float __angle))
   self)
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:serialization-length
   ()
   (+
    ;; float64 _angle
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _angle
       (sys::poke _angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _angle
     (setq _angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get pos_pub::angle :md5sum-) "4edb55038e2b888976a0c0c56935341c")
(setf (get pos_pub::angle :datatype-) "pos_pub/angle")
(setf (get pos_pub::angle :definition-)
      "float64 angle
")



(provide :pos_pub/angle "4edb55038e2b888976a0c0c56935341c")


