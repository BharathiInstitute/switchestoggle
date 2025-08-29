import 'package:flutter/material.dart';

class Switch21Toggle extends StatefulWidget {
  const Switch21Toggle({Key? key}) : super(key: key);

  @override
  State<Switch21Toggle> createState() => _Switch21ToggleState();
}

class _Switch21ToggleState extends State<Switch21Toggle> {
  bool _isOn = false;

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: _isOn,
      onChanged: (val) => setState(() => _isOn = val),
    );
  }
}