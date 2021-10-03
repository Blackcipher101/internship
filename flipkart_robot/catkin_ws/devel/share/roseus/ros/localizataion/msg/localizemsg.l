;; Auto-generated. Do not edit!


(when (boundp 'localizataion::localizemsg)
  (if (not (find-package "LOCALIZATAION"))
    (make-package "LOCALIZATAION"))
  (shadow 'localizemsg (find-package "LOCALIZATAION")))
(unless (find-package "LOCALIZATAION::LOCALIZEMSG")
  (make-package "LOCALIZATAION::LOCALIZEMSG"))

(in-package "ROS")
;;//! \htmlinclude localizemsg.msg.html


(defclass localizataion::localizemsg
  :super ros::object
  :slots (_angle _x_cordinate _y_cordinate _timestamp _id _velocity ))

(defmethod localizataion::localizemsg
  (:init
   (&key
    ((:angle __angle) 0.0)
    ((:x_cordinate __x_cordinate) 0)
    ((:y_cordinate __y_cordinate) 0)
    ((:timestamp __timestamp) 0.0)
    ((:id __id) "")
    ((:velocity __velocity) 0.0)
    )
   (send-super :init)
   (setq _angle (float __angle))
   (setq _x_cordinate (round __x_cordinate))
   (setq _y_cordinate (round __y_cordinate))
   (setq _timestamp (float __timestamp))
   (setq _id (string __id))
   (setq _velocity (float __velocity))
   self)
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:x_cordinate
   (&optional __x_cordinate)
   (if __x_cordinate (setq _x_cordinate __x_cordinate)) _x_cordinate)
  (:y_cordinate
   (&optional __y_cordinate)
   (if __y_cordinate (setq _y_cordinate __y_cordinate)) _y_cordinate)
  (:timestamp
   (&optional __timestamp)
   (if __timestamp (setq _timestamp __timestamp)) _timestamp)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:velocity
   (&optional __velocity)
   (if __velocity (setq _velocity __velocity)) _velocity)
  (:serialization-length
   ()
   (+
    ;; float64 _angle
    8
    ;; uint8 _x_cordinate
    1
    ;; uint8 _y_cordinate
    1
    ;; float64 _timestamp
    8
    ;; string _id
    4 (length _id)
    ;; float64 _velocity
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _angle
       (sys::poke _angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _x_cordinate
       (write-byte _x_cordinate s)
     ;; uint8 _y_cordinate
       (write-byte _y_cordinate s)
     ;; float64 _timestamp
       (sys::poke _timestamp (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;; float64 _velocity
       (sys::poke _velocity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _angle
     (setq _angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _x_cordinate
     (setq _x_cordinate (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _y_cordinate
     (setq _y_cordinate (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _timestamp
     (setq _timestamp (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _velocity
     (setq _velocity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get localizataion::localizemsg :md5sum-) "dc347669993e03acc612f6126bf93eb0")
(setf (get localizataion::localizemsg :datatype-) "localizataion/localizemsg")
(setf (get localizataion::localizemsg :definition-)
      "float64 angle
uint8 x_cordinate
uint8 y_cordinate
float64 timestamp
string id
float64 velocity

")



(provide :localizataion/localizemsg "dc347669993e03acc612f6126bf93eb0")


