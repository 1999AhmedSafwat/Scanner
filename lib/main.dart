
import 'package:flutter/material.dart';
import 'barcode/view.dart';
import 'details/details.dart';
import 'home/homeLeader/homeLeader.dart';
import 'navigator/navigator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xff2490A9),
        ),
      ),
      home:   DetailsView(),
    );
  }
}




//
// import 'package:architecture/navigator/navigator.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// import 'barcode/view.dart';
// import 'details/details.dart';
// import 'home/home.dart';
//
// void main (){
//   runApp(MyApp());
// }
// class MyApp extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//
//    return MaterialApp(
//      debugShowCheckedModeBanner: false,
//      theme: ThemeData(
//        primarySwatch: getMyMaterianlColor()),
//      home: SendData(),
//    );
//   }
// }
//
//
// MaterialColor getMyMaterianlColor(){
//   Color color =Color(0xff2490A9);
//   return MaterialColor(color.value, {
//     50:color .withOpacity(0.1),
//     100:color .withOpacity(0.2),
//     200:color .withOpacity(0.3),
//     300:color .withOpacity(0.4),
//     400:color .withOpacity(0.5),
//     500:color .withOpacity(0.6),
//     600:color .withOpacity(0.7),
//     700:color .withOpacity(0.8),
//     800:color .withOpacity(0.9),
//     900:color
//   });
// }