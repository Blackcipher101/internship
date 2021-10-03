; Auto-generated. Do not edit!


(cl:in-package localizataion-msg)


;//! \htmlinclude localizemsg.msg.html

(cl:defclass <localizemsg> (roslisp-msg-protocol:ros-message)
  ((angle
    :reader angle
    :initarg :angle
    :type cl:float
    :initform 0.0)
   (x_cordinate
    :reader x_cordinate
    :initarg :x_cordinate
    :type cl:fixnum
    :initform 0)
   (y_cordinate
    :reader y_cordinate
    :initarg :y_cordinate
    :type cl:fixnum
    :initform 0)
   (timestamp
    :reader timestamp
    :initarg :timestamp
    :type cl:float
    :initform 0.0)
   (id
    :reader id
    :initarg :id
    :type cl:string
    :initform "")
   (velocity
    :reader velocity
    :initarg :velocity
    :type cl:float
    :initform 0.0))
)

(cl:defclass localizemsg (<localizemsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <localizemsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'localizemsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name localizataion-msg:<localizemsg> is deprecated: use localizataion-msg:localizemsg instead.")))

(cl:ensure-generic-function 'angle-val :lambda-list '(m))
(cl:defmethod angle-val ((m <localizemsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localizataion-msg:angle-val is deprecated.  Use localizataion-msg:angle instead.")
  (angle m))

(cl:ensure-generic-function 'x_cordinate-val :lambda-list '(m))
(cl:defmethod x_cordinate-val ((m <localizemsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localizataion-msg:x_cordinate-val is deprecated.  Use localizataion-msg:x_cordinate instead.")
  (x_cordinate m))

(cl:ensure-generic-function 'y_cordinate-val :lambda-list '(m))
(cl:defmethod y_cordinate-val ((m <localizemsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localizataion-msg:y_cordinate-val is deprecated.  Use localizataion-msg:y_cordinate instead.")
  (y_cordinate m))

(cl:ensure-generic-function 'timestamp-val :lambda-list '(m))
(cl:defmethod timestamp-val ((m <localizemsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localizataion-msg:timestamp-val is deprecated.  Use localizataion-msg:timestamp instead.")
  (timestamp m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <localizemsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localizataion-msg:id-val is deprecated.  Use localizataion-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <localizemsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localizataion-msg:velocity-val is deprecated.  Use localizataion-msg:velocity instead.")
  (velocity m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <localizemsg>) ostream)
  "Serializes a message object of type '<localizemsg>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'x_cordinate)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'y_cordinate)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'timestamp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'id))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <localizemsg>) istream)
  "Deserializes a message object of type '<localizemsg>"
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
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'x_cordinate)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'y_cordinate)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'timestamp) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'velocity) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<localizemsg>)))
  "Returns string type for a message object of type '<localizemsg>"
  "localizataion/localizemsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'localizemsg)))
  "Returns string type for a message object of type 'localizemsg"
  "localizataion/localizemsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<localizemsg>)))
  "Returns md5sum for a message object of type '<localizemsg>"
  "dc347669993e03acc612f6126bf93eb0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'localizemsg)))
  "Returns md5sum for a message object of type 'localizemsg"
  "dc347669993e03acc612f6126bf93eb0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<localizemsg>)))
  "Returns full string definition for message of type '<localizemsg>"
  (cl:format cl:nil "float64 angle~%uint8 x_cordinate~%uint8 y_cordinate~%float64 timestamp~%string id~%float64 velocity~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'localizemsg)))
  "Returns full string definition for message of type 'localizemsg"
  (cl:format cl:nil "float64 angle~%uint8 x_cordinate~%uint8 y_cordinate~%float64 timestamp~%string id~%float64 velocity~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <localizemsg>))
  (cl:+ 0
     8
     1
     1
     8
     4 (cl:length (cl:slot-value msg 'id))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <localizemsg>))
  "Converts a ROS message object to a list"
  (cl:list 'localizemsg
    (cl:cons ':angle (angle msg))
    (cl:cons ':x_cordinate (x_cordinate msg))
    (cl:cons ':y_cordinate (y_cordinate msg))
    (cl:cons ':timestamp (timestamp msg))
    (cl:cons ':id (id msg))
    (cl:cons ':velocity (velocity msg))
))
