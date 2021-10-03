// Auto-generated. Do not edit!

// (in-package localizataion.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class localizemsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.angle = null;
      this.x_cordinate = null;
      this.y_cordinate = null;
      this.timestamp = null;
      this.id = null;
      this.velocity = null;
    }
    else {
      if (initObj.hasOwnProperty('angle')) {
        this.angle = initObj.angle
      }
      else {
        this.angle = 0.0;
      }
      if (initObj.hasOwnProperty('x_cordinate')) {
        this.x_cordinate = initObj.x_cordinate
      }
      else {
        this.x_cordinate = 0;
      }
      if (initObj.hasOwnProperty('y_cordinate')) {
        this.y_cordinate = initObj.y_cordinate
      }
      else {
        this.y_cordinate = 0;
      }
      if (initObj.hasOwnProperty('timestamp')) {
        this.timestamp = initObj.timestamp
      }
      else {
        this.timestamp = 0.0;
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = '';
      }
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type localizemsg
    // Serialize message field [angle]
    bufferOffset = _serializer.float64(obj.angle, buffer, bufferOffset);
    // Serialize message field [x_cordinate]
    bufferOffset = _serializer.uint8(obj.x_cordinate, buffer, bufferOffset);
    // Serialize message field [y_cordinate]
    bufferOffset = _serializer.uint8(obj.y_cordinate, buffer, bufferOffset);
    // Serialize message field [timestamp]
    bufferOffset = _serializer.float64(obj.timestamp, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.string(obj.id, buffer, bufferOffset);
    // Serialize message field [velocity]
    bufferOffset = _serializer.float64(obj.velocity, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type localizemsg
    let len;
    let data = new localizemsg(null);
    // Deserialize message field [angle]
    data.angle = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [x_cordinate]
    data.x_cordinate = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [y_cordinate]
    data.y_cordinate = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [timestamp]
    data.timestamp = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [velocity]
    data.velocity = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.id.length;
    return length + 30;
  }

  static datatype() {
    // Returns string type for a message object
    return 'localizataion/localizemsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dc347669993e03acc612f6126bf93eb0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 angle
    uint8 x_cordinate
    uint8 y_cordinate
    float64 timestamp
    string id
    float64 velocity
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new localizemsg(null);
    if (msg.angle !== undefined) {
      resolved.angle = msg.angle;
    }
    else {
      resolved.angle = 0.0
    }

    if (msg.x_cordinate !== undefined) {
      resolved.x_cordinate = msg.x_cordinate;
    }
    else {
      resolved.x_cordinate = 0
    }

    if (msg.y_cordinate !== undefined) {
      resolved.y_cordinate = msg.y_cordinate;
    }
    else {
      resolved.y_cordinate = 0
    }

    if (msg.timestamp !== undefined) {
      resolved.timestamp = msg.timestamp;
    }
    else {
      resolved.timestamp = 0.0
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = ''
    }

    if (msg.velocity !== undefined) {
      resolved.velocity = msg.velocity;
    }
    else {
      resolved.velocity = 0.0
    }

    return resolved;
    }
};

module.exports = localizemsg;
