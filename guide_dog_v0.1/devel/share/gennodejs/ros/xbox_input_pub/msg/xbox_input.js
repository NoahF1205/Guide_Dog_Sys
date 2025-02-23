// Auto-generated. Do not edit!

// (in-package xbox_input_pub.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class xbox_input {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.vx = null;
      this.vy = null;
      this.wz = null;
      this.pit = null;
      this.timestamps = null;
      this.conf = null;
    }
    else {
      if (initObj.hasOwnProperty('vx')) {
        this.vx = initObj.vx
      }
      else {
        this.vx = 0.0;
      }
      if (initObj.hasOwnProperty('vy')) {
        this.vy = initObj.vy
      }
      else {
        this.vy = 0.0;
      }
      if (initObj.hasOwnProperty('wz')) {
        this.wz = initObj.wz
      }
      else {
        this.wz = 0.0;
      }
      if (initObj.hasOwnProperty('pit')) {
        this.pit = initObj.pit
      }
      else {
        this.pit = 0.0;
      }
      if (initObj.hasOwnProperty('timestamps')) {
        this.timestamps = initObj.timestamps
      }
      else {
        this.timestamps = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('conf')) {
        this.conf = initObj.conf
      }
      else {
        this.conf = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type xbox_input
    // Serialize message field [vx]
    bufferOffset = _serializer.float64(obj.vx, buffer, bufferOffset);
    // Serialize message field [vy]
    bufferOffset = _serializer.float64(obj.vy, buffer, bufferOffset);
    // Serialize message field [wz]
    bufferOffset = _serializer.float64(obj.wz, buffer, bufferOffset);
    // Serialize message field [pit]
    bufferOffset = _serializer.float64(obj.pit, buffer, bufferOffset);
    // Serialize message field [timestamps]
    bufferOffset = _serializer.time(obj.timestamps, buffer, bufferOffset);
    // Serialize message field [conf]
    bufferOffset = _serializer.bool(obj.conf, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type xbox_input
    let len;
    let data = new xbox_input(null);
    // Deserialize message field [vx]
    data.vx = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [vy]
    data.vy = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [wz]
    data.wz = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pit]
    data.pit = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [timestamps]
    data.timestamps = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [conf]
    data.conf = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 41;
  }

  static datatype() {
    // Returns string type for a message object
    return 'xbox_input_pub/xbox_input';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '147af40cd5ad08adffe12a6229afa770';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 vx
    float64 vy
    float64 wz
    float64 pit 
    time timestamps
    bool conf 
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new xbox_input(null);
    if (msg.vx !== undefined) {
      resolved.vx = msg.vx;
    }
    else {
      resolved.vx = 0.0
    }

    if (msg.vy !== undefined) {
      resolved.vy = msg.vy;
    }
    else {
      resolved.vy = 0.0
    }

    if (msg.wz !== undefined) {
      resolved.wz = msg.wz;
    }
    else {
      resolved.wz = 0.0
    }

    if (msg.pit !== undefined) {
      resolved.pit = msg.pit;
    }
    else {
      resolved.pit = 0.0
    }

    if (msg.timestamps !== undefined) {
      resolved.timestamps = msg.timestamps;
    }
    else {
      resolved.timestamps = {secs: 0, nsecs: 0}
    }

    if (msg.conf !== undefined) {
      resolved.conf = msg.conf;
    }
    else {
      resolved.conf = false
    }

    return resolved;
    }
};

module.exports = xbox_input;
