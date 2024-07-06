import 'package:flutter/material.dart';

bool isSwitched = false;
class IconSwitch extends StatefulWidget {
  const IconSwitch({super.key});

  @override
  State<IconSwitch> createState() => _IconSwitchState();
}

class _IconSwitchState extends State<IconSwitch> {
  
  @override
  Widget build(BuildContext context) {
    return Switch(
      
        value: isSwitched,
        onChanged: (value) {
          setState(() {
            isSwitched = value;
          });
        });
  }
}