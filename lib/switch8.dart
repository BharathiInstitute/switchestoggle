import 'package:flutter/material.dart';

class Switch8 extends StatefulWidget {
  const Switch8({super.key});

  @override
  State<Switch8> createState() => _Switch8State();
}

class _Switch8State extends State<Switch8> {
  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => setState(() => isActive = !isActive),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        width: 120,
        height: 60,
        decoration: BoxDecoration(
          color: isActive ? Colors.teal : Colors.grey[400],
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: isActive ? Colors.tealAccent.withOpacity(0.4) : Colors.black12,
              blurRadius: 8,
              spreadRadius: 2,
            ),
          ],
        ),
        child: Center(
          child: Icon(
            isActive ? Icons.check_circle : Icons.radio_button_unchecked,
            color: Colors.white,
            size: 36,
          ),
        ),
      ),
    );
  }
}