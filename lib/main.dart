import 'package:flutter/material.dart';

// Widget imports
import 'switch_plane.dart';
import 'heart_toggle.dart';
import 'switch4.dart';
import 'switch5.dart';
import 'custom_toggle.dart';
import 'play_switch.dart';
import 'bb8_toggle.dart';
import 'switch7.dart';
import 'switch8.dart';
import 'switch9.dart';
import 'switch10.dart';
import 'switch14.dart'; // for SvgToggleButton
import 'switch11.dart'; // PowerToggle
import 'switch12.dart'; // NFToggle
import 'switch13.dart'; // SimpleToggle
import 'switch15.dart'; // CustomToggleSwitch

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
      
      case 12:
        detailWidget = Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const NFToggle(), // from switch12.dart
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Button inside 12th container pressed!')),
                );
              },
              child: const Text('Press Me'),
            ),
          ],
        );
        break;
      case 13:
        detailWidget = Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SimpleToggle(), // from switch13.dart
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Button inside 13th container pressed!')),
                );
              },
              child: const Text('Press Me'),
            ),
          ],
        );
        break;
      case 14:
        detailWidget = Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          
          ],
        );
        break;
      case 15:
        detailWidget = Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CustomToggleSwitch(),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Button inside 15th container pressed!')),
                );
              },
              child: const Text('Press Me'),
            ),
          ],
        );
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

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Toggle Switches Gallery'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(8.0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        ),
        itemCount: 20,
        itemBuilder: (context, index) {
          if (index == 0) {
            return ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ContainerDetailScreen(containerNumber: 1),
                  ),
                );
              },
              child: const Text('Container 1'),
            );
          } else if (index == 1) {
            return ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ContainerDetailScreen(containerNumber: 2),
                  ),
                );
              },
              child: const Text('Container 2'),
            );
          } else if (index == 2) {
            return ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ContainerDetailScreen(containerNumber: 3),
                  ),
                );
              },
              child: const Text('Container 3'),
            );
          } else if (index == 3) {
            return ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ContainerDetailScreen(containerNumber: 4),
                  ),
                );
              },
              child: const Text('Container 4'),
            );
          } else if (index == 4) {
            return ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ContainerDetailScreen(containerNumber: 5),
                  ),
                );
              },
              child: const Text('Container 5'),
            );
          } else if (index == 5) {
            return ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ContainerDetailScreen(containerNumber: 6),
                  ),
                );
              },
              child: const Text('Container 6'),
            );
          } else if (index == 6) {
            return ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ContainerDetailScreen(containerNumber: 7),
                  ),
                );
              },
              child: const Text('Container 7'),
            );
          } else if (index == 7) {
            return ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ContainerDetailScreen(containerNumber: 8),
                  ),
                );
              },
              child: const Text('Container 8'),
            );
          } else if (index == 8) {
            return ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ContainerDetailScreen(containerNumber: 9),
                  ),
                );
              },
              child: const Text('Container 9'),
            );
          } else if (index == 9) {
            return ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ContainerDetailScreen(containerNumber: 10),
                  ),
                );
              },
              child: const Text('Container 10'),
            );
          } else if (index == 10) {
            return ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ContainerDetailScreen(containerNumber: 11),
                  ),
                );
              },
              child: const Text('Container 11'),
            );
          } else if (index == 11) {
            return ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ContainerDetailScreen(containerNumber: 12),
                  ),
                );
              },
              child: const Text('Container 12'),
            );
          } else if (index == 12) {
            return ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ContainerDetailScreen(containerNumber: 13),
                  ),
                );
              },
              child: const Text('Container 13'),
            );
          } else if (index == 13) {
            return ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ContainerDetailScreen(containerNumber: 14),
                  ),
                );
              },
              child: const Text('Container 14'),
            );
          } else if (index == 14) {
            return ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ContainerDetailScreen(containerNumber: 15),
                  ),
                );
              },
              child: const Text('Container 15'),
            );
          } else {
            return const SizedBox.shrink();
          }
        },
      ),
    );
  }
}
