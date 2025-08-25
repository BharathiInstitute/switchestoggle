import 'package:flutter/material.dart';

class SpeakerToggle extends StatefulWidget {
  const SpeakerToggle({super.key});

  @override
  State<SpeakerToggle> createState() => _SpeakerToggleState();
}

class _SpeakerToggleState extends State<SpeakerToggle> {
  bool isMuted = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => setState(() => isMuted = !isMuted),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(50),
        ),
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          transitionBuilder: (child, animation) =>
              ScaleTransition(scale: animation, child: child),
          child: isMuted
              ? Icon(
                  Icons.volume_off,
                  key: const ValueKey('mute'),
                  color: Colors.white,
                  size: 40,
                )
              : Icon(
                  Icons.volume_up,
                  key: const ValueKey('speaker'),
                  color: Colors.white,
                  size: 40,
                ),
        ),
      ),
    );
  }

}