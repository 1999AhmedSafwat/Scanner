import 'package:flutter/material.dart';

class QRScannerPage extends StatelessWidget {
  const QRScannerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [Center(child: Text("data",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 50),))],
      ),
    );
  }
}
