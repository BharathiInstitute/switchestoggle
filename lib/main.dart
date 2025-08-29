import 'package:flutter/material.dart';

// Widget imports - keep each custom widget in its own file
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
import 'switch14.dart';
import 'switch11.dart' as switch11;
import 'switch12.dart';
import 'switch13.dart';
import 'switch15.dart';
import 'switch16.dart';
import 'switch17.dart';
import 'switch18.dart';
import 'switch19.dart';
import 'switch20.dart';
import 'switch21.dart';
import 'uiverse_checkbox_41.dart';
import 'switch23.dart';
import 'switch24.dart';

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
          children: [PlaneSwitch(), const SizedBox(height: 24)],
        );
        break;
      case 2:
        detailWidget = Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [HeartToggleDemo(), const SizedBox(height: 24)],
        );
        break;
      case 3:
        detailWidget = Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [TextSwitchDemo(), const SizedBox(height: 24)],
        );
        break;
      case 4:
        detailWidget = Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [NeoToggleDemo(), const SizedBox(height: 24)],
        );
        break;
      case 5:
        detailWidget = Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [CustomToggle(), const SizedBox(height: 24)],
        );
        break;
      case 6:
        detailWidget = Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [PlaySwitch(), const SizedBox(height: 24)],
        );
        break;
      case 7:
        detailWidget = Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [BB8Toggle(), const SizedBox(height: 24)],
        );
        break;
      case 8:
        detailWidget = Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Switch7(), const SizedBox(height: 24)],
        );
        break;
      case 9:
        detailWidget = Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Switch8(), const SizedBox(height: 24)],
        );
        break;
      case 10:
        detailWidget = _ToggleSwitchDemo();
        break;
      case 11:
        detailWidget = Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            switch11.PowerToggle(),
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
            NFToggle(),
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
            SimpleToggle(),
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
        detailWidget = Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _SimpleSwitch(),
            const SizedBox(height: 24),
            _MuteSpeakerButtonDemo(),
          ],
        );
        break;
      case 15:
        detailWidget = Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FancyGlowToggle(), // <-- new custom toggle for switch15
          ],
        );
        break;
      case 16:
        detailWidget = Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ModernSlideToggle(),
            const SizedBox(height: 24),
            const Text('Modern Slide Toggle Example', style: TextStyle(fontSize: 18)),
          ],
        );
        break;
      case 17:
        detailWidget = Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LockToggleButton(),
          ],
        );
        break;
      case 18:
        detailWidget = Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            WifiToggleButton(),
          ],
        );
        break;
      case 19:
        detailWidget = Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiverseToggleSwitch(),
          ],
        );
        break;
      case 20:
        detailWidget = Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            NeonWaveToggle(), // <-- your custom switch toggle for switch20
          ],
        );
        break;
      case 21:
        detailWidget = Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Switch21Toggle(),
            const SizedBox(height: 24),
            UiverseCheckbox41(), // <-- Add this line to show the custom toggle
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Button inside Switch21 pressed!')),
                );
              },
              child: const Text('Press Me'),
            ),
          ],
        );
        break;
      case 22:
        detailWidget = Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Switch22Toggle(),
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
      case 23:
        detailWidget = Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Switch23Toggle(),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Button inside Switch23 pressed!')),
                );
              },
              child: const Text('Press Me'),
            ),
          ],
        );
        break;
      case 24:
        detailWidget = Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Switch24Toggle(),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Button inside Switch24 pressed!')),
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
        child: Center(child: detailWidget),
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
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        ),
        itemCount: 30,
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

/// Small helper kept in main.dart (used by case 14)
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
                content: Text(isMuted ? 'Speaker muted!' : 'Speaker unmuted!'),
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

class _ToggleSwitchDemo16 extends StatefulWidget {
  const _ToggleSwitchDemo16({Key? key}) : super(key: key);

  @override
  State<_ToggleSwitchDemo16> createState() => _ToggleSwitchDemo16State();
}

class _ToggleSwitchDemo16State extends State<_ToggleSwitchDemo16> {
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
              SnackBar(content: Text('Toggle Switch is ${_value ? "ON" : "OFF"}')),
            );
          },
          child: const Text('Press Me'),
        ),
      ],
    );
  }
}

class ModernSlideToggle extends StatefulWidget {
  const ModernSlideToggle({Key? key}) : super(key: key);

  @override
  _ModernSlideToggleState createState() => _ModernSlideToggleState();
}

class _ModernSlideToggleState extends State<ModernSlideToggle> {
  bool _isToggled = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isToggled = !_isToggled;
        });
      },
      child: Container(
        width: 60,
        height: 34,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: _isToggled ? Colors.blue : Colors.grey,
        ),
        child: Stack(
          children: [
            AnimatedPositioned(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
              left: _isToggled ? 26 : 4,
              right: _isToggled ? 4 : 26,
              child: Container(
                width: 34,
                height: 34,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LockToggleButton extends StatefulWidget {
  const LockToggleButton({Key? key}) : super(key: key);

  @override
  _LockToggleButtonState createState() => _LockToggleButtonState();
}

class _LockToggleButtonState extends State<LockToggleButton> {
  bool _isLocked = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isLocked = !_isLocked;
        });
      },
      child: Container(
        width: 60,
        height: 34,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: _isLocked ? Colors.red : Colors.green,
        ),
        child: Stack(
          children: [
            AnimatedPositioned(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
              left: _isLocked ? 26 : 4,
              right: _isLocked ? 4 : 26,
              child: Container(
                width: 34,
                height: 34,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
              ),
            ),
            Center(
              child: Text(
                _isLocked ? 'Locked' : 'Unlocked',
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class WifiToggleButton extends StatefulWidget {
  const WifiToggleButton({Key? key}) : super(key: key);

  @override
  _WifiToggleButtonState createState() => _WifiToggleButtonState();
}

class _WifiToggleButtonState extends State<WifiToggleButton> {
  bool _isWifiEnabled = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isWifiEnabled = !_isWifiEnabled;
        });
      },
      child: Container(
        width: 60,
        height: 34,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: _isWifiEnabled ? Colors.blue : Colors.grey,
        ),
        child: Stack(
          children: [
            AnimatedPositioned(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
              left: _isWifiEnabled ? 26 : 4,
              right: _isWifiEnabled ? 4 : 26,
              child: Container(
                width: 34,
                height: 34,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
              ),
            ),
            Center(
              child: Icon(
                _isWifiEnabled ? Icons.wifi : Icons.wifi_off,
                color: _isWifiEnabled ? Colors.white : Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class UiverseToggleSwitch extends StatefulWidget {
  const UiverseToggleSwitch({Key? key}) : super(key: key);

  @override
  State<UiverseToggleSwitch> createState() => _UiverseToggleSwitchState();
}

class _UiverseToggleSwitchState extends State<UiverseToggleSwitch> {
  bool isOn = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => setState(() => isOn = !isOn),
      child: Container(
        width: 70,
        height: 40,
        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: isOn ? Colors.greenAccent.shade700 : Colors.grey.shade400,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 6,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            // Background labels
            Positioned(
              left: 12,
              child: AnimatedOpacity(
                opacity: isOn ? 1.0 : 0.5,
                duration: const Duration(milliseconds: 200),
                child: Text(
                  '0',
                  style: TextStyle(
                    fontSize: 18,
                    color: isOn ? Colors.white : Colors.black54,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Positioned(
              right: 12,
              child: AnimatedOpacity(
                opacity: isOn ? 0.5 : 1.0,
                duration: const Duration(milliseconds: 200),
                child: Text(
                  'I',
                  style: TextStyle(
                    fontSize: 18,
                    color: isOn ? Colors.black54 : Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            // Knob
            AnimatedAlign(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
              alignment: isOn ? Alignment.centerRight : Alignment.centerLeft,
              child: Container(
                width: 32,
                height: 32,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 4,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NeoToggle extends StatefulWidget {
  const NeoToggle({Key? key}) : super(key: key);

  @override
  State<NeoToggle> createState() => _NeoToggleState();
}

class _NeoToggleState extends State<NeoToggle> with SingleTickerProviderStateMixin {
  bool isOn = false;
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 400),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _toggle() {
    setState(() => isOn = !isOn);
    if (isOn) {
      _controller.forward();
    } else {
      _controller.reverse();
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _toggle,
      child: Container(
        width: 100,
        height: 48,
        padding: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: isOn ? Colors.deepPurple.shade700 : Colors.grey.shade800,
          boxShadow: [
            BoxShadow(
              color: isOn ? Colors.deepPurpleAccent.withOpacity(0.3) : Colors.black26,
              blurRadius: 12,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            // Spectrum bars
            Positioned(
              top: 12,
              left: 24,
              right: 24,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(5, (i) {
                  return AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    width: 6,
                    height: isOn ? 18.0 - i * 2 : 10.0 + i * 2,
                    decoration: BoxDecoration(
                      color: isOn ? Colors.cyanAccent : Colors.grey.shade600,
                      borderRadius: BorderRadius.circular(3),
                    ),
                  );
                }),
              ),
            ),
            // Track highlight
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                height: isOn ? 48 : 44,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  gradient: LinearGradient(
                    colors: isOn
                        ? [Colors.deepPurpleAccent, Colors.cyanAccent]
                        : [Colors.grey.shade700, Colors.grey.shade900],
                  ),
                ),
              ),
            ),
            // Thumb
            AnimatedAlign(
              duration: const Duration(milliseconds: 300),
              alignment: isOn ? Alignment.centerRight : Alignment.centerLeft,
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: isOn ? Colors.cyanAccent : Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: isOn ? Colors.cyanAccent.withOpacity(0.3) : Colors.black12,
                      blurRadius: 8,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Center(
                  child: AnimatedSwitcher(
                    duration: const Duration(milliseconds: 300),
                    child: isOn
                        ? Icon(Icons.graphic_eq, color: Colors.deepPurple, size: 24, key: ValueKey('on'))
                        : Icon(Icons.graphic_eq, color: Colors.grey.shade800, size: 24, key: ValueKey('off')),
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

class ReduceMotionToggle extends StatefulWidget {
  const ReduceMotionToggle({Key? key}) : super(key: key);

  @override
  State<ReduceMotionToggle> createState() => _ReduceMotionToggleState();
}

class _ReduceMotionToggleState extends State<ReduceMotionToggle>
    with SingleTickerProviderStateMixin {
  bool isReduced = false;
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
    setState(() => isReduced = !isReduced);
    if (isReduced) {
      _controller.forward();
    } else {
      _controller.reverse();
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _toggle,
      child: SizedBox(
        width: 72,
        height: 40,
        child: Stack(
          alignment: Alignment.center,
          children: [
            // Line
            AnimatedPositioned(
              duration: const Duration(milliseconds: 400),
              left: isReduced ? 38 : 60,
              top: 10,
              child: Container(
                width: 4,
                height: 20,
                decoration: BoxDecoration(
                  color: Colors.grey.shade400,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            ),
            // Ball trace (faded circles)
            ...List.generate(4, (i) {
              final offset = isReduced ? 38.0 - i * 7.0 : 60.0 - i * 7.0;
              return AnimatedPositioned(
                duration: Duration(milliseconds: 200 + i * 60),
                left: offset,
                top: 20,
                child: Opacity(
                  opacity: isReduced ? 0.3 + i * 0.15 : 0.15 + i * 0.1,
                  child: Container(
                    width: 12 - i * 2,
                    height: 12 - i * 2,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey.shade400,
                    ),
                  ),
                ),
              );
            }),
            // Ball
            AnimatedPositioned(
              duration: const Duration(milliseconds: 400),
              left: isReduced ? 38 : 60,
              top: 16,
              child: Container(
                width: 16,
                height: 16,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: isReduced ? Colors.blueAccent : Colors.grey.shade400,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 4,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
              ),
            ),
            // Toggle background
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey.shade200,
                  border: Border.all(color: Colors.grey.shade400, width: 1),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Switch22Toggle extends StatefulWidget {
  const Switch22Toggle({Key? key}) : super(key: key);

  @override
  State<Switch22Toggle> createState() => _Switch22ToggleState();
}

class _Switch22ToggleState extends State<Switch22Toggle> {
  bool _isOn = false;

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: _isOn,
      onChanged: (val) => setState(() => _isOn = val),
    );
  }
}

class Switch23Toggle extends StatefulWidget {
  const Switch23Toggle({Key? key}) : super(key: key);

  @override
  State<Switch23Toggle> createState() => _Switch23ToggleState();
}

class _Switch23ToggleState extends State<Switch23Toggle> {
  bool _isOn = false;

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: _isOn,
      onChanged: (val) => setState(() => _isOn = val),
    );
  }
}

class Switch24Toggle extends StatefulWidget {
  const Switch24Toggle({Key? key}) : super(key: key);

  @override
  State<Switch24Toggle> createState() => _Switch24ToggleState();
}

class _Switch24ToggleState extends State<Switch24Toggle> {
  bool _isOn = false;

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: _isOn,
      onChanged: (val) => setState(() => _isOn = val),
    );
  }
}
