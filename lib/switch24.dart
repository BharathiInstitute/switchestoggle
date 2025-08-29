import 'package:flutter/material.dart';

class Switch24Toggle extends StatefulWidget {
  const Switch24Toggle({Key? key}) : super(key: key);

  @override
  State<Switch24Toggle> createState() => _Switch24ToggleState();
}

class _Switch24ToggleState extends State<Switch24Toggle> {
  bool _isOn = false;

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: _isOn,
      onChanged: (val) => setState(() => _isOn = val),
    );
  }
}