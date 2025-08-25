import 'package:flutter/material.dart';

// You can put this in a new file (e.g., heart_favorite_toggle.dart) or directly in main.dart

class HeartFavoriteToggle extends StatefulWidget {
  const HeartFavoriteToggle({Key? key}) : super(key: key);

  @override
  State<HeartFavoriteToggle> createState() => _HeartFavoriteToggleState();
}

class _HeartFavoriteToggleState extends State<HeartFavoriteToggle>
    with SingleTickerProviderStateMixin {
  bool isFavorite = true;
  late AnimationController _controller;
  late Animation<double> _scaleAnim;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    );
    _scaleAnim = TweenSequence([
      TweenSequenceItem(tween: Tween(begin: 1.0, end: 1.3), weight: 25),
      TweenSequenceItem(tween: Tween(begin: 1.3, end: 1.0), weight: 25),
      TweenSequenceItem(tween: Tween(begin: 1.0, end: 1.3), weight: 25),
      TweenSequenceItem(tween: Tween(begin: 1.3, end: 1.0), weight: 25),
    ]).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void toggleFavorite() {
    setState(() {
      isFavorite = !isFavorite;
      _controller.forward(from: 0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: toggleFavorite,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              blurRadius: 24,
              offset: const Offset(0, 8),
            ),
          ],
        ),
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            AnimatedBuilder(
              animation: _scaleAnim,
              builder: (context, child) {
                return Transform.scale(
                  scale: _scaleAnim.value,
                  child: Icon(
                    Icons.favorite,
                    color: isFavorite ? Colors.red : Colors.grey,
                    size: 24,
                  ),
                );
              },
            ),
            const SizedBox(width: 14),
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 500),
              child: isFavorite
                  ? const Text(
                      'Added to Favorites',
                      key: ValueKey('added'),
                      style: TextStyle(color: Colors.black),
                    )
                  : const Text(
                      'Add to Favorites',
                      key: ValueKey('add'),
                      style: TextStyle(color: Colors.black),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomSparkleToggle extends StatefulWidget {
  const CustomSparkleToggle({Key? key}) : super(key: key);

  @override
  State<CustomSparkleToggle> createState() => _CustomSparkleToggleState();
}

class _CustomSparkleToggleState extends State<CustomSparkleToggle>
    with SingleTickerProviderStateMixin {
  bool isChecked = false;
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 400),
      vsync: this,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void toggle() {
    setState(() {
      isChecked = !isChecked;
      if (isChecked) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: toggle,
      child: Container(
        width: 120,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(9999),
          border: Border.all(color: isChecked ? Colors.blue : Colors.grey, width: 2),
          gradient: RadialGradient(
            colors: isChecked
                ? [Colors.blue.shade700, Colors.black]
                : [Colors.grey.shade400, Colors.black],
            center: Alignment.topCenter,
            radius: 1.2,
          ),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            // Sparkles
            ...List.generate(8, (i) {
              final angle = (i * 45.0) * 3.14159 / 180;
              final radius = 22.0 + (isChecked ? 8.0 : 0.0);
              return AnimatedBuilder(
                animation: _controller,
                builder: (context, child) {
                  return Positioned(
                    left: 60 + radius * (isChecked ? 1.2 : 1.0) * (i.isEven ? 1 : -1) * 0.2 * (isChecked ? _controller.value : 1),
                    top: 30 + radius * (isChecked ? 1.2 : 1.0) * (i.isOdd ? 1 : -1) * 0.2 * (isChecked ? _controller.value : 1),
                    child: Transform.rotate(
                      angle: angle,
                      child: Container(
                        width: isChecked ? 10 : 6,
                        height: isChecked ? 10 : 6,
                        decoration: BoxDecoration(
                          color: isChecked ? Colors.white : Colors.grey.shade300,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  );
                },
              );
            }),
            // Toggle icon
            AnimatedBuilder(
              animation: _controller,
              builder: (context, child) {
                return Transform.rotate(
                  angle: isChecked ? -3.92699 : 0, // -225deg in radians
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9999),
                      gradient: RadialGradient(
                        colors: isChecked
                            ? [Colors.blue.shade900, Colors.blue.shade400]
                            : [Colors.grey.shade600, Colors.grey.shade400],
                        center: Alignment.topCenter,
                        radius: 1.0,
                      ),
                      border: Border.all(
                        color: isChecked ? Colors.blue : Colors.grey,
                        width: 2,
                      ),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.bolt,
                        color: isChecked ? Colors.yellow : Colors.white,
                        size: 28,
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

// New ModernSlideToggle class
class ModernSlideToggle extends StatefulWidget {
  const ModernSlideToggle({Key? key}) : super(key: key);

  @override
  State<ModernSlideToggle> createState() => _ModernSlideToggleState();
}

class _ModernSlideToggleState extends State<ModernSlideToggle> {
  bool isOn = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => setState(() => isOn = !isOn),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        width: 70,
        height: 36,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: isOn ? Colors.teal : Colors.grey[400],
        ),
        child: Stack(
          children: [
            AnimatedAlign(
              duration: const Duration(milliseconds: 250),
              alignment: isOn ? Alignment.centerRight : Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(4.0),
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
                    isOn ? Icons.check : Icons.remove,
                    color: isOn ? Colors.teal : Colors.grey,
                    size: 18,
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

// Usage in Switch16 page:
class Switch16 extends StatelessWidget {
  const Switch16({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomSparkleToggle(),
    );
  }
}