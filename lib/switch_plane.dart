import 'package:flutter/material.dart';

class PlaneSwitch extends StatefulWidget {
  const PlaneSwitch({super.key});

  @override
  _PlaneSwitchState createState() => _PlaneSwitchState();
}

class _PlaneSwitchState extends State<PlaneSwitch> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    double width = 120;
    double height = 50;

    return GestureDetector(
      onTap: () {
        setState(() {
          isChecked = !isChecked;
        });
      },
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: Colors.lightBlue[100],
          borderRadius: BorderRadius.circular(height / 2),
        ),
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            // Clouds
            Positioned(
              left: 10,
              top: 10,
              child: Icon(Icons.cloud, color: Colors.white70, size: 20),
            ),
            Positioned(
              right: 10,
              top: 15,
              child: Icon(Icons.cloud, color: Colors.white60, size: 25),
            ),
            // Plane
            AnimatedPositioned(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
              left: isChecked ? width - 50 : 0,
              child: SizedBox(
                width: 50,
                height: 50,
                child: Icon(
                  Icons.airplanemode_active,
                  color: Colors.blueAccent,
                  size: 40,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}