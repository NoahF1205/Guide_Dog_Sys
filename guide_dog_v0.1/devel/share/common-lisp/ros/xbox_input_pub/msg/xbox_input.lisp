; Auto-generated. Do not edit!


(cl:in-package xbox_input_pub-msg)


;//! \htmlinclude xbox_input.msg.html

(cl:defclass <xbox_input> (roslisp-msg-protocol:ros-message)
  ((vx
    :reader vx
    :initarg :vx
    :type cl:float
    :initform 0.0)
   (vy
    :reader vy
    :initarg :vy
    :type cl:float
    :initform 0.0)
   (wz
    :reader wz
    :initarg :wz
    :type cl:float
    :initform 0.0)
   (pit
    :reader pit
    :initarg :pit
    :type cl:float
    :initform 0.0)
   (timestamps
    :reader timestamps
    :initarg :timestamps
    :type cl:real
    :initform 0)
   (conf
    :reader conf
    :initarg :conf
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass xbox_input (<xbox_input>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <xbox_input>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'xbox_input)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name xbox_input_pub-msg:<xbox_input> is deprecated: use xbox_input_pub-msg:xbox_input instead.")))

(cl:ensure-generic-function 'vx-val :lambda-list '(m))
(cl:defmethod vx-val ((m <xbox_input>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xbox_input_pub-msg:vx-val is deprecated.  Use xbox_input_pub-msg:vx instead.")
  (vx m))

(cl:ensure-generic-function 'vy-val :lambda-list '(m))
(cl:defmethod vy-val ((m <xbox_input>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xbox_input_pub-msg:vy-val is deprecated.  Use xbox_input_pub-msg:vy instead.")
  (vy m))

(cl:ensure-generic-function 'wz-val :lambda-list '(m))
(cl:defmethod wz-val ((m <xbox_input>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xbox_input_pub-msg:wz-val is deprecated.  Use xbox_input_pub-msg:wz instead.")
  (wz m))

(cl:ensure-generic-function 'pit-val :lambda-list '(m))
(cl:defmethod pit-val ((m <xbox_input>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xbox_input_pub-msg:pit-val is deprecated.  Use xbox_input_pub-msg:pit instead.")
  (pit m))

(cl:ensure-generic-function 'timestamps-val :lambda-list '(m))
(cl:defmethod timestamps-val ((m <xbox_input>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xbox_input_pub-msg:timestamps-val is deprecated.  Use xbox_input_pub-msg:timestamps instead.")
  (timestamps m))

(cl:ensure-generic-function 'conf-val :lambda-list '(m))
(cl:defmethod conf-val ((m <xbox_input>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xbox_input_pub-msg:conf-val is deprecated.  Use xbox_input_pub-msg:conf instead.")
  (conf m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <xbox_input>) ostream)
  "Serializes a message object of type '<xbox_input>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'vx))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'vy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'wz))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'pit))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'timestamps)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'timestamps) (cl:floor (cl:slot-value msg 'timestamps)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'conf) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <xbox_input>) istream)
  "Deserializes a message object of type '<xbox_input>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vx) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vy) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'wz) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pit) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'timestamps) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:setf (cl:slot-value msg 'conf) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<xbox_input>)))
  "Returns string type for a message object of type '<xbox_input>"
  "xbox_input_pub/xbox_input")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'xbox_input)))
  "Returns string type for a message object of type 'xbox_input"
  "xbox_input_pub/xbox_input")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<xbox_input>)))
  "Returns md5sum for a message object of type '<xbox_input>"
  "147af40cd5ad08adffe12a6229afa770")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'xbox_input)))
  "Returns md5sum for a message object of type 'xbox_input"
  "147af40cd5ad08adffe12a6229afa770")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<xbox_input>)))
  "Returns full string definition for message of type '<xbox_input>"
  (cl:format cl:nil "float64 vx~%float64 vy~%float64 wz~%float64 pit ~%time timestamps~%bool conf ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'xbox_input)))
  "Returns full string definition for message of type 'xbox_input"
  (cl:format cl:nil "float64 vx~%float64 vy~%float64 wz~%float64 pit ~%time timestamps~%bool conf ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <xbox_input>))
  (cl:+ 0
     8
     8
     8
     8
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <xbox_input>))
  "Converts a ROS message object to a list"
  (cl:list 'xbox_input
    (cl:cons ':vx (vx msg))
    (cl:cons ':vy (vy msg))
    (cl:cons ':wz (wz msg))
    (cl:cons ':pit (pit msg))
    (cl:cons ':timestamps (timestamps msg))
    (cl:cons ':conf (conf msg))
))
