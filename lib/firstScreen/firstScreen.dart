import 'package:flutter/material.dart';

import '../barcode/view.dart';

class Firstscreen extends StatelessWidget {
  const Firstscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Center(
                child: Text(
              "data",
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.w300),
            )),
            SizedBox(
              height: 20,
            ),
            GestureDetector(onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => QRScannerPage(),));
            },
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(color: Colors.black12,),child: Center(child: Text("Scan")),
              ),
            )
          ],
        ),
      ),
    );
  }
}
