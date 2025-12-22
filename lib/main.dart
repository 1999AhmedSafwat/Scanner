
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
      home:   DetailsView(plate_number: '', plate_letters: '', brand: '', color: '',),
    );
  }
}



