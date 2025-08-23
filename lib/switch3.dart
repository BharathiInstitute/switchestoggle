import 'package:flutter/material.dart';

class HeartToggleDemo extends StatefulWidget {
  const HeartToggleDemo({super.key});

  @override
  State<HeartToggleDemo> createState() => _HeartToggleDemoState();
}

class _HeartToggleDemoState extends State<HeartToggleDemo>
    with SingleTickerProviderStateMixin {
  bool isLoved = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          setState(() {
            isLoved = !isLoved;
          });
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 400),
          curve: Curves.easeInOut,
          child: Icon(
            Icons.favorite,
            size: 100,
            color: isLoved ? Colors.red : Colors.white,
          ),
        ),
      ),
    );
  }
}