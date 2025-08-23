import 'package:flutter/material.dart';

class CustomToggle extends StatefulWidget {
  const CustomToggle({super.key});

  @override
  State<CustomToggle> createState() => _CustomToggleState();
}

class _CustomToggleState extends State<CustomToggle> {
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
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                AnimatedContainer(
                  duration: const Duration(milliseconds: 400),
                  width: isChecked ? 60 : 0,
                  height: isChecked ? 60 : 0,
                  decoration: BoxDecoration(
                    color: Colors.green.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                AnimatedContainer(
                  duration: const Duration(milliseconds: 400),
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: isChecked ? Colors.green : Colors.white,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: isChecked ? Colors.green : Colors.grey,
                      width: 2,
                    ),
                    boxShadow: [
                      if (isChecked)
                        BoxShadow(
                          color: Colors.green.withOpacity(0.4),
                          blurRadius: 10,
                          spreadRadius: 2,
                        )
                    ],
                  ),
                  child: Icon(
                    Icons.download,
                    color: isChecked ? Colors.white : Colors.black,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Text(
              isChecked ? "Open" : "Download",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: isChecked ? Colors.green : Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}