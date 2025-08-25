import 'package:flutter/material.dart';

class Switch14 extends StatefulWidget {
  const Switch14({Key? key}) : super(key: key);

  @override
  State<Switch14> createState() => _Switch14State();
}

class _Switch14State extends State<Switch14> {
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Switch(
        value: _value,
        onChanged: (val) => setState(() => _value = val),
      ),
    );
  }
}

class SpeakerToggle extends StatefulWidget {
  const SpeakerToggle({super.key});

  @override
  State<SpeakerToggle> createState() => _SpeakerToggleState();
}

class _SpeakerToggleState extends State<SpeakerToggle> {
  bool isMuted = false;
  bool toggleValue = false; // For the extra toggle switch

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
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
        ),
        const SizedBox(height: 24),
        Switch(
          value: isMuted,
          onChanged: (val) => setState(() => isMuted = val),
        ),
        const SizedBox(height: 24),
        Switch(
          value: toggleValue,
          onChanged: (val) => setState(() => toggleValue = val),
        ),
        const SizedBox(height: 24),
        ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Toggle Switch is ${toggleValue ? "ON" : "OFF"}')),
            );
          },
          child: const Text('Press Me'),
        ),
      ],
    );
  }
}

class CustomAnimatedToggle extends StatefulWidget {
  const CustomAnimatedToggle({Key? key}) : super(key: key);

  @override
  State<CustomAnimatedToggle> createState() => _CustomAnimatedToggleState();
}

class _CustomAnimatedToggleState extends State<CustomAnimatedToggle> {
  bool isOn = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => setState(() => isOn = !isOn),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        width: 70,
        height: 36,
        padding: const EdgeInsets.symmetric(horizontal: 6),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: isOn ? Colors.green : Colors.grey[400],
        ),
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            AnimatedAlign(
              duration: const Duration(milliseconds: 300),
              alignment: isOn ? Alignment.centerRight : Alignment.centerLeft,
              child: Container(
                width: 28,
                height: 28,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 4,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Icon(
                  isOn ? Icons.check : Icons.close,
                  color: isOn ? Colors.green : Colors.red,
                  size: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}