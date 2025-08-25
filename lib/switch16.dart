// You can put this in a new file (e.g., heart_favorite_toggle.dart) or directly in main.dart

import 'package:flutter/material.dart';

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