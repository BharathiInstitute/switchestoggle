import 'package:flutter/material.dart';

class NFToggle extends StatefulWidget {
  const NFToggle({super.key});

  @override
  State<NFToggle> createState() => _NFToggleState();
}

class _NFToggleState extends State<NFToggle> {
  bool isOn = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => setState(() => isOn = !isOn),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        width: 80,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: isOn ? Colors.amber : Colors.grey.shade400,
        ),
        child: Center(
          child: Text(
            isOn ? 'NFT ON' : 'NFT OFF',
            style: TextStyle(
              color: isOn ? Colors.black : Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}