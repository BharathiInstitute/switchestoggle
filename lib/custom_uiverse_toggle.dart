import 'package:flutter/material.dart';
import 'custom_uiverse_toggle.dart'; // For UiverseToggleSwitch

class UiverseToggleSwitch extends StatefulWidget {
  const UiverseToggleSwitch({super.key});

  @override
  State<UiverseToggleSwitch> createState() => _UiverseToggleSwitchState();
}

class _UiverseToggleSwitchState extends State<UiverseToggleSwitch> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => setState(() => isChecked = !isChecked),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Start',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: isChecked ? Colors.blue : Colors.grey,
              fontSize: 18,
            ),
          ),
          const SizedBox(width: 12),
          AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            width: 60,
            height: 32,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32),
              color: isChecked ? Colors.blue : Colors.grey.shade300,
              border: Border.all(
                color: isChecked ? Colors.blue : Colors.grey,
                width: 2,
              ),
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                AnimatedAlign(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                  alignment: isChecked ? Alignment.centerRight : Alignment.centerLeft,
                  child: Container(
                    width: 28,
                    height: 28,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 4,
                          offset: Offset(2, 2),
                        ),
                      ],
                    ),
                    child: Icon(
                      isChecked ? Icons.power : Icons.power_off,
                      color: isChecked ? Colors.blue : Colors.grey,
                      size: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}