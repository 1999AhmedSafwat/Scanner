import 'package:flutter/material.dart';

class SettingView extends StatelessWidget {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Center(child: Text("Setting",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 50),))
      ],),
    );
  }
}
