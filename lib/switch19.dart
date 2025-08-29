import 'package:flutter/material.dart';

class UiverseToggleSwitch extends StatefulWidget {
  const UiverseToggleSwitch({Key? key}) : super(key: key);

  @override
  State<UiverseToggleSwitch> createState() => _UiverseToggleSwitchState();
}

class _UiverseToggleSwitchState extends State<UiverseToggleSwitch> {
  bool isOn = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => setState(() => isOn = !isOn),
      child: Container(
        width: 70,
        height: 40,
        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: isOn ? Colors.greenAccent.shade700 : Colors.grey.shade400,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 6,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            // Background labels
            Positioned(
              left: 12,
              child: AnimatedOpacity(
                opacity: isOn ? 1.0 : 0.5,
                duration: const Duration(milliseconds: 200),
                child: Text(
                  '0',
                  style: TextStyle(
                    fontSize: 18,
                    color: isOn ? Colors.white : Colors.black54,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Positioned(
              right: 12,
              child: AnimatedOpacity(
                opacity: isOn ? 0.5 : 1.0,
                duration: const Duration(milliseconds: 200),
                child: Text(
                  'I',
                  style: TextStyle(
                    fontSize: 18,
                    color: isOn ? Colors.black54 : Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            // Knob
            AnimatedAlign(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
              alignment: isOn ? Alignment.centerRight : Alignment.centerLeft,
              child: Container(
                width: 32,
                height: 32,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 4,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}