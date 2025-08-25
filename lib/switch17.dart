import 'package:flutter/material.dart';

class LockToggleButton extends StatefulWidget {
  const LockToggleButton({super.key});

  @override
  State<LockToggleButton> createState() => _LockToggleButtonState();
}

class _LockToggleButtonState extends State<LockToggleButton>
    with SingleTickerProviderStateMixin {
  bool isLocked = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isLocked = !isLocked;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: isLocked ? Colors.redAccent : Colors.green,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 8,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              isLocked ? Icons.lock : Icons.lock_open,
              color: Colors.white,
              size: 32,
            ),
            const SizedBox(width: 12),
            Text(
              isLocked ? 'Locked' : 'Unlocked',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}