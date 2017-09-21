pragma solidity ^0.4.4;

contract OneValue {

  string public _value;
  address owner;
  function OneValue() {
    // constructor
    owner = msg.sender;
  }

  function setValue(string value){
    if(owner == msg.sender) {
      _value = value;
    }
  }
  function getValue() returns (string) {
    return _value;
  }

}
