import 'package:flutter/material.dart';

class NeonWaveToggle extends StatefulWidget {
  const NeonWaveToggle({Key? key}) : super(key: key);

  @override
  State<NeonWaveToggle> createState() => _NeonWaveToggleState();
}

class _NeonWaveToggleState extends State<NeonWaveToggle>
    with SingleTickerProviderStateMixin {
  bool isOn = false;
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _toggle() {
    setState(() => isOn = !isOn);
    if (isOn) {
      _controller.forward();
    } else {
      _controller.reverse();
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _toggle,
      child: Container(
        width: 100,
        height: 48,
        padding: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: isOn ? Colors.purple.shade700 : Colors.grey.shade800,
          boxShadow: [
            BoxShadow(
              color: isOn ? Colors.purpleAccent.withOpacity(0.3) : Colors.black26,
              blurRadius: 12,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            // Animated wave bars
            Positioned(
              top: 12,
              left: 24,
              right: 24,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(5, (i) {
                  return AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    width: 6,
                    height: isOn ? 18.0 - i * 2 : 10.0 + i * 2,
                    decoration: BoxDecoration(
                      color: isOn ? Colors.pinkAccent : Colors.grey.shade600,
                      borderRadius: BorderRadius.circular(3),
                    ),
                  );
                }),
              ),
            ),
            // Thumb
            AnimatedAlign(
              duration: const Duration(milliseconds: 300),
              alignment: isOn ? Alignment.centerRight : Alignment.centerLeft,
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: isOn ? Colors.pinkAccent : Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: isOn ? Colors.pinkAccent.withOpacity(0.3) : Colors.black12,
                      blurRadius: 8,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Center(
                  child: AnimatedSwitcher(
                    duration: const Duration(milliseconds: 300),
                    child: isOn
                        ? Icon(Icons.waves, color: Colors.purple, size: 24, key: ValueKey('on'))
                        : Icon(Icons.power_settings_new, color: Colors.grey.shade700, size: 24, key: ValueKey('off')),
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