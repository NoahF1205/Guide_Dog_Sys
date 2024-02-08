; Auto-generated. Do not edit!


(cl:in-package pos_pub-msg)


;//! \htmlinclude angle.msg.html

(cl:defclass <angle> (roslisp-msg-protocol:ros-message)
  ((angle
    :reader angle
    :initarg :angle
    :type cl:float
    :initform 0.0))
)

(cl:defclass angle (<angle>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <angle>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'angle)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pos_pub-msg:<angle> is deprecated: use pos_pub-msg:angle instead.")))

(cl:ensure-generic-function 'angle-val :lambda-list '(m))
(cl:defmethod angle-val ((m <angle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pos_pub-msg:angle-val is deprecated.  Use pos_pub-msg:angle instead.")
  (angle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <angle>) ostream)
  "Serializes a message object of type '<angle>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <angle>) istream)
  "Deserializes a message object of type '<angle>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<angle>)))
  "Returns string type for a message object of type '<angle>"
  "pos_pub/angle")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'angle)))
  "Returns string type for a message object of type 'angle"
  "pos_pub/angle")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<angle>)))
  "Returns md5sum for a message object of type '<angle>"
  "4edb55038e2b888976a0c0c56935341c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'angle)))
  "Returns md5sum for a message object of type 'angle"
  "4edb55038e2b888976a0c0c56935341c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<angle>)))
  "Returns full string definition for message of type '<angle>"
  (cl:format cl:nil "float64 angle~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'angle)))
  "Returns full string definition for message of type 'angle"
  (cl:format cl:nil "float64 angle~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <angle>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <angle>))
  "Converts a ROS message object to a list"
  (cl:list 'angle
    (cl:cons ':angle (angle msg))
))
