import 'package:flutter/material.dart';

class SimpleToggle extends StatefulWidget {
  const SimpleToggle({super.key});

  @override
  State<SimpleToggle> createState() => _SimpleToggleState();
}

class _SimpleToggleState extends State<SimpleToggle> {
  bool isOn = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => setState(() => isOn = !isOn),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        width: 70,
        height: 35,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: isOn ? Colors.blue : Colors.grey.shade400,
        ),
        child: Center(
          child: Text(
            isOn ? 'ON' : 'OFF',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
