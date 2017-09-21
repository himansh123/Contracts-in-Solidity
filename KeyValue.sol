pragma solidity ^0.4.4;

import "./StringUtils.sol";

contract KeyValue {

  mapping(string => string) private store;

  function KeyValue() {
    // constructor
  }

  function setValue(string key, string value) {
    if(StringUtils.compare(store[key],'') == 0) {
      store[key] = value;
    }
  }
  function getValue(string key) returns (string) {
    return store[key];
  }
}
