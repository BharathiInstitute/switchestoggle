import 'package:flutter/material.dart';

class Switch22Toggle extends StatefulWidget {
  const Switch22Toggle({Key? key}) : super(key: key);

  @override
  State<Switch22Toggle> createState() => _Switch22ToggleState();
}

class _Switch22ToggleState extends State<Switch22Toggle> {
  bool _isOn = false;

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: _isOn,
      onChanged: (val) => setState(() => _isOn = val),
    );
  }
}