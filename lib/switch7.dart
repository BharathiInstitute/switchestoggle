import 'package:flutter/material.dart';

class Switch7 extends StatefulWidget {
  const Switch7({super.key});

  @override
  State<Switch7> createState() => _Switch7State();
}

class _Switch7State extends State<Switch7> {
  bool isOn = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => setState(() => isOn = !isOn),
      child: Container(
        width: 120,
        height: 60,
        decoration: BoxDecoration(
          color: isOn ? Colors.purple : Colors.grey[400],
          borderRadius: BorderRadius.circular(30),
        ),
        child: Center(
          child: Text(
            isOn ? 'ON' : 'OFF',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}