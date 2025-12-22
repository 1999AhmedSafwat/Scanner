import 'package:flutter/material.dart';

import '../barcode/view.dart';
import '../home/homeLeader/homeLeader.dart';
import '../setting/setting.dart';

class NavigatorView extends StatefulWidget {
  const NavigatorView ({super.key});

  @override
  State<NavigatorView> createState() => _NavigatorViewState();
}
class _NavigatorViewState extends State<NavigatorView> {
  int currentIndex = 0;

  List<Widget> pages = [
    HomeleaderView(),
    SettingView(),
  ];

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;

    return Scaffold(
      body: pages[currentIndex],

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: GestureDetector(
        onTap: () {
          Navigator.push(context,
            MaterialPageRoute(builder: (context) => QRScannerPage()),
          );
        },
        child: Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: scheme.primary,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.black38,
                blurRadius: 15,
                spreadRadius: 2,
                offset: Offset(0, 5),
              ),
            ],
          ),
          child: Image.asset(
            "assets/images/iconqr.png",
            height: 40,
            width: 40,
          ),
        ),
      ),

      bottomNavigationBar: BottomAppBar(
        height: 80,
        shape: CircularNotchedRectangle(),
        notchMargin: 25,
        child: Container(
          height: 60,
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Icon(Icons.home_filled,
                    color: currentIndex == 0 ? scheme.primary : Colors.grey),
                onPressed: () {
                  setState(() {
                    currentIndex = 0;
                  });
                },
              ),
              IconButton(
                icon: Icon(Icons.settings,
                    color: currentIndex == 1 ? scheme.primary : Colors.grey),
                onPressed: () {
                  setState(() {
                    currentIndex = 1;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
