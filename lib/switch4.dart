import 'package:flutter/material.dart';

class TextSwitchDemo extends StatefulWidget {
  const TextSwitchDemo({super.key});

  @override
  State<TextSwitchDemo> createState() => _TextSwitchDemoState();
}

class _TextSwitchDemoState extends State<TextSwitchDemo> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          setState(() {
            isChecked = !isChecked;
          });
        },
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            // The label text
            Text(
              "Check",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: isChecked ? Colors.green : Colors.black54,
              ),
            ),
            const SizedBox(width: 12),
            // The toggle part
            AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              width: 50,
              height: 28,
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                color: isChecked ? Colors.green : Colors.grey[400],
                borderRadius: BorderRadius.circular(20),
              ),
              child: AnimatedAlign(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
                alignment: isChecked ? Alignment.centerRight : Alignment.centerLeft,
                child: Container(
                  width: 22,
                  height: 22,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 4,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}