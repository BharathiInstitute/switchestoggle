import 'package:flutter/material.dart';

class PowerToggle extends StatefulWidget {
  const PowerToggle({super.key});

  @override
  State<PowerToggle> createState() => _PowerToggleState();
}

class _PowerToggleState extends State<PowerToggle> {
  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => setState(() => isActive = !isActive),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 400),
        width: 120,
        height: 60,
        decoration: BoxDecoration(
          color: isActive ? Colors.deepPurple : Colors.grey[400],
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: isActive ? Colors.deepPurpleAccent.withOpacity(0.4) : Colors.black12,
              blurRadius: 8,
              spreadRadius: 2,
            ),
          ],
        ),
        child: Center(
          child: Icon(
            isActive ? Icons.nightlight_round : Icons.wb_sunny,
            color: Colors.white,
            size: 36,
          ),
        ),
      ),
    );
  }
}