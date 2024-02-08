;; Auto-generated. Do not edit!


(when (boundp 'xbox_input_pub::xbox_input)
  (if (not (find-package "XBOX_INPUT_PUB"))
    (make-package "XBOX_INPUT_PUB"))
  (shadow 'xbox_input (find-package "XBOX_INPUT_PUB")))
(unless (find-package "XBOX_INPUT_PUB::XBOX_INPUT")
  (make-package "XBOX_INPUT_PUB::XBOX_INPUT"))

(in-package "ROS")
;;//! \htmlinclude xbox_input.msg.html


(defclass xbox_input_pub::xbox_input
  :super ros::object
  :slots (_vx _vy _wz _pit _timestamps _conf ))

(defmethod xbox_input_pub::xbox_input
  (:init
   (&key
    ((:vx __vx) 0.0)
    ((:vy __vy) 0.0)
    ((:wz __wz) 0.0)
    ((:pit __pit) 0.0)
    ((:timestamps __timestamps) (instance ros::time :init))
    ((:conf __conf) nil)
    )
   (send-super :init)
   (setq _vx (float __vx))
   (setq _vy (float __vy))
   (setq _wz (float __wz))
   (setq _pit (float __pit))
   (setq _timestamps __timestamps)
   (setq _conf __conf)
   self)
  (:vx
   (&optional __vx)
   (if __vx (setq _vx __vx)) _vx)
  (:vy
   (&optional __vy)
   (if __vy (setq _vy __vy)) _vy)
  (:wz
   (&optional __wz)
   (if __wz (setq _wz __wz)) _wz)
  (:pit
   (&optional __pit)
   (if __pit (setq _pit __pit)) _pit)
  (:timestamps
   (&optional __timestamps)
   (if __timestamps (setq _timestamps __timestamps)) _timestamps)
  (:conf
   (&optional __conf)
   (if __conf (setq _conf __conf)) _conf)
  (:serialization-length
   ()
   (+
    ;; float64 _vx
    8
    ;; float64 _vy
    8
    ;; float64 _wz
    8
    ;; float64 _pit
    8
    ;; time _timestamps
    8
    ;; bool _conf
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _vx
       (sys::poke _vx (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vy
       (sys::poke _vy (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _wz
       (sys::poke _wz (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pit
       (sys::poke _pit (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; time _timestamps
       (write-long (send _timestamps :sec) s) (write-long (send _timestamps :nsec) s)
     ;; bool _conf
       (if _conf (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _vx
     (setq _vx (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vy
     (setq _vy (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _wz
     (setq _wz (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pit
     (setq _pit (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; time _timestamps
     (send _timestamps :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _timestamps :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _conf
     (setq _conf (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get xbox_input_pub::xbox_input :md5sum-) "147af40cd5ad08adffe12a6229afa770")
(setf (get xbox_input_pub::xbox_input :datatype-) "xbox_input_pub/xbox_input")
(setf (get xbox_input_pub::xbox_input :definition-)
      "float64 vx
float64 vy
float64 wz
float64 pit 
time timestamps
bool conf 

")



(provide :xbox_input_pub/xbox_input "147af40cd5ad08adffe12a6229afa770")


