import 'package:flutter/material.dart';

class WifiToggleButton extends StatefulWidget {
  const WifiToggleButton({super.key});

  @override
  State<WifiToggleButton> createState() => _WifiToggleButtonState();
}

class _WifiToggleButtonState extends State<WifiToggleButton> {
  bool isOn = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isOn = !isOn;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isOn ? Colors.blueAccent : Colors.grey.shade300,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.15),
              blurRadius: 8,
              offset: const Offset(2, 4),
            )
          ],
        ),
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          transitionBuilder: (child, animation) =>
              ScaleTransition(scale: animation, child: child),
          child: Icon(
            isOn ? Icons.wifi : Icons.wifi_off,
            key: ValueKey(isOn),
            color: Colors.white,
            size: 28,
          ),
        ),
      ),
    );
  }
}