import 'package:flutter/material.dart';

class BadgePage extends StatefulWidget {
  const BadgePage({super.key});

  @override
  State<BadgePage> createState() => _BadgePageState();
}

class _BadgePageState extends State<BadgePage> {
  int value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Badge'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            onPressed: () => setState(() => value -= 1),
            child: const Icon(Icons.remove),
          ),
          const SizedBox(width: 8),
          FloatingActionButton(
            onPressed: () => setState(() => value += 1),
            child: const Icon(Icons.add),
          ),
        ],
      ),
      body: Center(
        child: Badge(
          label: Text('$value'),
          alignment: AlignmentDirectional.topEnd,
          isLabelVisible: value > 0,
          backgroundColor: Colors.green,
          largeSize: 24,
          smallSize: 12,
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
          offset: const Offset(12, -12),
          textColor: Colors.red,
          textStyle: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Colors.red,
          ),
          child: const Icon(Icons.notifications),
        ),
      ),
    );
  }
}
