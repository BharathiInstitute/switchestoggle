import 'package:flutter/material.dart';

class ImageToggleSwitch extends StatefulWidget {
  const ImageToggleSwitch({super.key});

  @override
  State<ImageToggleSwitch> createState() => _ImageToggleSwitchState();
}

class _ImageToggleSwitchState extends State<ImageToggleSwitch> {
  bool isOn = false;

  // Replace these with your own asset images or NetworkImage
  final String offImage =
      "https://via.placeholder.com/100x100.png?text=OFF"; // example
  final String onImage =
      "https://via.placeholder.com/100x100.png?text=ON"; // example

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => setState(() => isOn = !isOn),
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Switch background
          AnimatedContainer(
            duration: const Duration(milliseconds: 400),
            width: 120,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: isOn ? Colors.green.shade400 : Colors.grey.shade400,
            ),
          ),
          // Toggle image
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 400),
            transitionBuilder: (child, animation) {
              return FadeTransition(opacity: animation, child: child);
            },
            child: Image.network(
              isOn ? onImage : offImage,
              key: ValueKey(isOn),
              width: 40,
              height: 40,
            ),
          ),
        ],
      ),
    );
  }
}