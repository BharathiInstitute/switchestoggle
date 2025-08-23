import 'package:flutter/material.dart';
import 'bb8_toggle.dart'; // For BB8Toggle

class BB8Toggle extends StatefulWidget {
  const BB8Toggle({super.key});

  @override
  State<BB8Toggle> createState() => _BB8ToggleState();
}

class _BB8ToggleState extends State<BB8Toggle> {
  bool isOn = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => setState(() => isOn = !isOn),
      child: Container(
        width: 200,
        height: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          gradient: LinearGradient(
            colors: isOn
                ? [Colors.blue.shade900, Colors.black]
                : [Colors.orange.shade200, Colors.yellow.shade100],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Icon(
            Icons.android, // Placeholder for BB8, replace with your own design
            size: 64,
            color: isOn ? Colors.white : Colors.orange,
          ),
        ),
      ),
    );
  }
}