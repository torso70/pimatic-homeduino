module.exports = {
  title: "homeduino device config schemes"
  HomeduinoDHTSensor: {
    title: "HomeduinoDHTSensor config options"
    type: "object"
    properties:
      type:
        description: "The type of the dht sensor (22, 33, 44 or 55)"
        type: "integer"
        default: 22
      pin: 
        description: "The digital pin, the DHT sensor is connected to."
        type: "integer"
    required: ["pin"]
  },
  HomeduinoRFSwitch: {
    title: "HomeduinoRFSwitch config options"
    type: "object"
    properties:
      protocol:
        description: "The switch protocol to use."
        type: "string"
      protocolOptions:
        description: "The protocol options"
        type: "object"
    required: ["protocol", "protocolOptions"]
  }
  HomeduinoRFTemperature: {
    title: "HomeduinoRFTemperature config options"
    type: "object"
    properties:
      protocol:
        description: "The weather protocol to use."
        type: "string"
      protocolOptions:
        description: "The protocol options"
        type: "object"
    required: ["protocol", "protocolOptions"]
  }
  HomeduinoKeypad: {
    title: "HomeduinoKeypad config options"
    type: "object"
    properties:
      buttons:
        description: "Buttons of the keypad"
        type: "array"
        default: []
        format: "table"
        items:
          type: "object"
          properties:
            id:
              type: "string"
            text:
              type: "string"
  }
}