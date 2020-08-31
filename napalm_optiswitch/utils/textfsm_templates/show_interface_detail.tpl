Value Vif (vif\d+)
Value Name (\S+)
Value Ports ([\d,]+)
Value MacAddress (\S+)
Value IpAddress (\d+\.\d+\.\d+\.\d+/\d+)
Value LinkState (UP|DOWN)
Value Active (Yes|No)
Value Description (.*)

Start
  ^${Vif} is ${LinkState}
  ^\s+Name: ${Name}
  ^\s+Description: ${Description}
  ^\s+Active: ${Active}
  ^\s+Ports: ${Ports}
  ^\s+MAC address is ${MacAddress}
  ^\s+IP address is ${IpAddress} -> Record