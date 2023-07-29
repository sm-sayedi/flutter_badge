import 'package:flutter/material.dart';

class BadgeWithoutChildPage extends StatelessWidget {
  const BadgeWithoutChildPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Badge without child'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: const Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('MacBook Pro M2'),
            SizedBox(width: 8),
            Badge(
              label: Text('NEW'),
              alignment: AlignmentDirectional.bottomEnd,
              offset: Offset(20, 20),
            ),
          ],
        ),
      ),
    );
  }
}
