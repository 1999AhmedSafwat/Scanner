import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SuccessPage extends StatelessWidget {
  final String color;
  final dynamic price;
  final String number;

  const SuccessPage({
    super.key,
    required this.color,
    required this.price,
    required this.number,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('QR Success')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Color: $color', style: const TextStyle(fontSize: 18)),
            Text('Price: $price', style: const TextStyle(fontSize: 18)),
            Text('Number: $number', style: const TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
