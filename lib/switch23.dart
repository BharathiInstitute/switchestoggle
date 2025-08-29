import 'package:flutter/material.dart';

class Switch23Toggle extends StatefulWidget {
  const Switch23Toggle({Key? key}) : super(key: key);

  @override
  State<Switch23Toggle> createState() => _Switch23ToggleState();
}

class _Switch23ToggleState extends State<Switch23Toggle> {
  bool _isOn = false;

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: _isOn,
      onChanged: (val) => setState(() => _isOn = val),
    );
  }
}