import 'package:flutter/material.dart';


class NeoToggleDemo extends StatefulWidget {
  const NeoToggleDemo({super.key});

  @override
  State<NeoToggleDemo> createState() => _NeoToggleDemoState();
}

class _NeoToggleDemoState extends State<NeoToggleDemo>
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
    setState(() {
      isOn = !isOn;
      if (isOn) {
        _controller.repeat(reverse: true);
      } else {
        _controller.stop();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: _toggle,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 400),
          width: 120,
          height: 60,
          padding: const EdgeInsets.all(6),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: isOn
                  ? [Colors.greenAccent, Colors.teal]
                  : [Colors.grey[800]!, Colors.grey[700]!],
            ),
            borderRadius: BorderRadius.circular(40),
            boxShadow: [
              BoxShadow(
                color: isOn
                    ? Colors.greenAccent.withOpacity(0.6)
                    : Colors.black54,
                blurRadius: 12,
                spreadRadius: 2,
              )
            ],
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              // Spectrum Bars (visualizer effect)
              if (isOn)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(5, (i) {
                    return AnimatedBuilder(
                      animation: _controller,
                      builder: (context, child) {
                        double value = 0.5 +
                                0.5 *
                                    (1 +
                                        (i + 1) *
                                            _controller.value *
                                            2 *
                                            3.14)
                            .clamp(0.2, 1.0);
                        return Container(
                          width: 8,
                          height: 30 * value,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(4),
                          ),
                        );
                      },
                    );
                  }),
                ),
              // Toggle knob
              Align(
                alignment: isOn
                    ? Alignment.centerRight
                    : Alignment.centerLeft,
                child: Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 6,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Icon(
                    isOn ? Icons.music_note : Icons.power_settings_new,
                    color: isOn ? Colors.green : Colors.grey[700],
                    size: 28,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


