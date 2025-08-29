import 'package:flutter/material.dart';

class FancyGlowToggle extends StatefulWidget {
  const FancyGlowToggle({Key? key}) : super(key: key);

  @override
  State<FancyGlowToggle> createState() => _FancyGlowToggleState();
}

class _FancyGlowToggleState extends State<FancyGlowToggle>
    with SingleTickerProviderStateMixin {
  bool _isOn = false;
  late final AnimationController _pulseController;

  @override
  void initState() {
    super.initState();
    _pulseController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
      lowerBound: 0.0,
      upperBound: 1.0,
    );
  }

  @override
  void dispose() {
    _pulseController.dispose();
    super.dispose();
  }

  void _toggle() {
    setState(() => _isOn = !_isOn);
    if (_isOn) {
      _pulseController.forward(from: 0.0);
    }
  }

  @override
  Widget build(BuildContext context) {
    final color = _isOn ? Colors.deepPurpleAccent : Colors.grey.shade400;
    return GestureDetector(
      onTap: _toggle,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        width: 120,
        height: 52,
        padding: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(28),
          boxShadow: _isOn
              ? [
                  BoxShadow(
                    color: Colors.deepPurpleAccent.withOpacity(0.45),
                    blurRadius: 20,
                    spreadRadius: 2,
                  ),
                ]
              : [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 6,
                    offset: const Offset(0, 3),
                  ),
                ],
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            // Optional label
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 14.0),
                child: AnimatedOpacity(
                  opacity: _isOn ? 1.0 : 0.0,
                  duration: const Duration(milliseconds: 250),
                  child: const Text(
                    'ON',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.6,
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 14.0),
                child: AnimatedOpacity(
                  opacity: _isOn ? 0.0 : 1.0,
                  duration: const Duration(milliseconds: 250),
                  child: const Text(
                    'OFF',
                    style: TextStyle(
                      color: Colors.white70,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.6,
                    ),
                  ),
                ),
              ),
            ),

            // Knob
            AnimatedAlign(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
              alignment: _isOn ? Alignment.centerRight : Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6.0),
                child: ScaleTransition(
                  scale: Tween(begin: 1.0, end: 1.06)
                      .animate(CurvedAnimation(parent: _pulseController, curve: Curves.easeOut)),
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 6,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Icon(
                      _isOn ? Icons.wb_sunny : Icons.nights_stay,
                      color: _isOn ? Colors.orangeAccent : Colors.indigo,
                      size: 22,
                    ),
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