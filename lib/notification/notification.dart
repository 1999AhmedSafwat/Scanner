import 'package:flutter/material.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [Center(child: Text("Notification",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 40),))],),
    );
  }
}
