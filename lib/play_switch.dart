import 'package:flutter/material.dart';

class PlaySwitch extends StatefulWidget {
  const PlaySwitch({super.key});

  @override
  State<PlaySwitch> createState() => _PlaySwitchState();
}

class _PlaySwitchState extends State<PlaySwitch> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => setState(() => isChecked = !isChecked),
      child: Container(
        padding: const EdgeInsets.all(6),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: isChecked ? Colors.green.shade400 : Colors.grey.shade400,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            AnimatedOpacity(
              opacity: isChecked ? 0.0 : 1.0,
              duration: const Duration(milliseconds: 300),
              child: const Padding(
                padding: EdgeInsets.only(right: 12),
                child: Text(
                  "Play",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
              width: 40,
              height: 40,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Icon(
                  Icons.play_arrow_rounded,
                  size: 28,
                  color: isChecked ? Colors.green.shade400 : Colors.grey.shade600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}