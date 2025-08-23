import 'package:flutter/material.dart';
import 'switch_plane.dart'; // For PlaneSwitch
import 'heart_toggle.dart'; // For HeartToggleDemo
import 'switch4.dart'; // For TextSwitchDemo
import 'switch5.dart'; // For NeoToggleDemo
import 'custom_toggle.dart'; // For CustomToggle
import 'play_switch.dart'; // For PlaySwitch
import 'bb8_toggle.dart'; // For BB8Toggle
import 'switch7.dart'; // For Switch7
import 'switch8.dart'; // For Switch8
import 'switch9.dart'; // For PowerToggle
import 'switch10.dart'; // For ImageToggleSwitch

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ContainerScreen(),
    );
  }
}

class ContainerScreen extends StatelessWidget {
  const ContainerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // You can keep the AppBar title or leave it empty
        // title: const Text('6 Containers Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            // Add your label or heading here
            const Text(
              'Toggle Switches',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
            ),
            const SizedBox(height: 16),
            // The grid of buttons
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: List.generate(11, (index) {
                  return ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      elevation: 6,
                      padding: const EdgeInsets.all(0),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) =>
                              ContainerDetailScreen(containerNumber: index + 1),
                        ),
                      );
                    },
                    child: Center(
                      child: Text(
                        'Button ${index + 1}',
                        style: const TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ContainerDetailScreen extends StatelessWidget {
  final int containerNumber;
  const ContainerDetailScreen({super.key, required this.containerNumber});

  @override
  Widget build(BuildContext context) {
    Widget detailWidget;
    switch (containerNumber) {
      case 1:
        detailWidget = const _SimpleSwitch();
        break;
      case 2:
        detailWidget = const PlaneSwitch();
        break;
      case 3:
        detailWidget = const HeartToggleDemo();
        break;
      case 4:
        detailWidget = const TextSwitchDemo();
        break;
      case 5:
        detailWidget = const NeoToggleDemo();
        break;
      case 6:
        detailWidget = const CustomToggle();
        break;
      case 7:
        detailWidget = const PlaySwitch();
        break;
      case 8:
        detailWidget = const BB8Toggle();
        break;
      case 9:
        detailWidget = const Switch7();
        break;
      case 10:
        detailWidget = const Switch8();
        break;
      case 11:
        detailWidget = const PowerToggle();
        break;
      case 12:
        detailWidget = const ImageToggleSwitch();
        break;
      default:
        detailWidget = Text(
          'You opened container $containerNumber!',
          style: const TextStyle(fontSize: 24),
        );
    }
    return Scaffold(
      appBar: AppBar(
        // title: Text('Container $containerNumber'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(child: detailWidget),
      ),
    );
  }
}

class _SimpleSwitch extends StatefulWidget {
  const _SimpleSwitch({Key? key}) : super(key: key);

  @override
  __SimpleSwitchState createState() => __SimpleSwitchState();
}

class __SimpleSwitchState extends State<_SimpleSwitch> {
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Switch(
        value: _value,
        onChanged: (value) {
          setState(() {
            _value = value;
          });
        },
      ),
    );
  }
}

