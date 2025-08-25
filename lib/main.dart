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
import 'switch9.dart' as switch9;
import 'switch10.dart';
import 'switch14.dart'; // for SvgToggleButton
import 'switch11.dart' as switch11; // PowerToggle
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
        detailWidget = Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const PlaneSwitch(),
            const SizedBox(height: 24),
          ],
        );
        break;
      case 2:
        detailWidget = Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const HeartToggleDemo(),
            const SizedBox(height: 24),
          ],
        );
        break;
      case 3:
        detailWidget = Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TextSwitchDemo(),
            const SizedBox(height: 24),
          ],
        );
        break;
      case 4:
        detailWidget = Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const NeoToggleDemo(),
            const SizedBox(height: 24),
          ],
        );
        break;
      case 5:
        detailWidget = Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CustomToggle(),
            const SizedBox(height: 24),
          ],
        );
        break;
      case 6:
        detailWidget = Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const PlaySwitch(),
            const SizedBox(height: 24),
          ],
        );
        break;
      case 7:
        detailWidget = Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const BB8Toggle(),
            const SizedBox(height: 24),
          ],
        );
        break;
      case 8:
        detailWidget = Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Switch7(),
            const SizedBox(height: 24),
          ],
        );
        break;
      case 9:
        detailWidget = Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Switch8(),
            const SizedBox(height: 24),
          ],
        );
        break;
      case 10:
        detailWidget = _ToggleSwitchDemo();
        break;
      case 11:
        detailWidget = Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const switch11.PowerToggle(),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Button pressed!')),
                );
              },
              child: const Text('Press Me'),
            ),
          ],
        );
        break;
      case 12:
        detailWidget = Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const NFToggle(),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Button pressed!')),
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
            const SimpleToggle(),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Button pressed!')),
                );
              },
              child: const Text('Press Me'),
            ),
          ],
        );
        break;
      case 14:
        detailWidget = _MuteSpeakerButtonDemo();
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
                  const SnackBar(content: Text('Button pressed!')),
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
        title: Text('Container $containerNumber'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(child: detailWidget), // <-- FIXED: add Center(child: detailWidget)
      ),
    );
  }
}

class _ToggleSwitchDemo extends StatefulWidget {
  const _ToggleSwitchDemo({Key? key}) : super(key: key);

  @override
  State<_ToggleSwitchDemo> createState() => _ToggleSwitchDemoState();
}

class _ToggleSwitchDemoState extends State<_ToggleSwitchDemo> {
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Switch(
          value: _value,
          onChanged: (val) => setState(() => _value = val),
        ),
        const SizedBox(height: 24),
        ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Button pressed!')),
            );
          },
          child: const Text('Press Me'),
        ),
      ],
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
        itemCount: 30, // <-- Change this to 30 for 30 buttons
        itemBuilder: (context, index) {
          final containerNumber = index + 1;
          return ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      ContainerDetailScreen(containerNumber: containerNumber),
                ),
              );
            },
            child: Text('Container $containerNumber'),
          );
        },
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: HomePage(),
    debugShowCheckedModeBanner: false,
  ));
}

class _MuteSpeakerButtonDemo extends StatefulWidget {
  const _MuteSpeakerButtonDemo({Key? key}) : super(key: key);

  @override
  State<_MuteSpeakerButtonDemo> createState() => _MuteSpeakerButtonDemoState();
}

class _MuteSpeakerButtonDemoState extends State<_MuteSpeakerButtonDemo> {
  bool isMuted = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          isMuted ? Icons.volume_off : Icons.volume_up,
          size: 48,
          color: isMuted ? Colors.red : Colors.green,
        ),
        const SizedBox(height: 24),
        ElevatedButton(
          onPressed: () {
            setState(() => isMuted = !isMuted);
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(isMuted
                    ? 'Speaker muted!'
                    : 'Speaker unmuted!'),
              ),
            );
          },
          child: Text(isMuted ? 'Unmute Speaker' : 'Mute Speaker'),
        ),
      ],
    );
  }
}

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
