import 'package:flutter/material.dart';

class UiverseCheckbox41 extends StatefulWidget {
  const UiverseCheckbox41({Key? key}) : super(key: key);

  @override
  State<UiverseCheckbox41> createState() => _UiverseCheckbox41State();
}

class _UiverseCheckbox41State extends State<UiverseCheckbox41> {
  bool _checked = false;

  @override
  Widget build(BuildContext context) {
    const double size = 100;
    return GestureDetector(
      onTap: () => setState(() => _checked = !_checked),
      child: SizedBox(
        width: size,
        height: size / 2,
        child: Stack(
          children: [
            // Background
            AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              width: size,
              height: size / 2,
              decoration: BoxDecoration(
                color: _checked ? const Color(0xFFFDE881) : Colors.white,
                border: Border.all(color: const Color(0xFF222222), width: 3),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(_checked ? 100 : 30),
                  topRight: const Radius.circular(100),
                  bottomLeft: Radius.circular(_checked ? 30 : 100),
                  bottomRight: const Radius.circular(100),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 20,
                    offset: const Offset(0, 10),
                  ),
                ],
              ),
            ),
            // Knob
            AnimatedPositioned(
              duration: const Duration(milliseconds: 500),
              left: _checked ? size / 2 : 0,
              top: 0,
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 500),
                width: size / 2,
                height: size / 2,
                decoration: BoxDecoration(
                  color: _checked ? Colors.white : const Color(0xFFFDE881),
                  border: Border.all(color: const Color(0xFF222222), width: 3),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(_checked ? 100 : 30),
                    topRight: const Radius.circular(100),
                    bottomLeft: Radius.circular(_checked ? 30 : 100),
                    bottomRight: const Radius.circular(100),
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