import 'package:flutter/material.dart';

class TempPage1 extends StatelessWidget {
  const TempPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Temp Page 1'),
      ),
      body: const Center(
        child: Text('Temp Page 1'),
      ),
    );
  }
}
