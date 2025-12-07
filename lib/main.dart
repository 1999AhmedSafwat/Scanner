import 'package:architecture/tes/v.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'barcode/view.dart';
import 'details/details.dart';

void main (){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

   return MaterialApp(
     debugShowCheckedModeBanner: false,
     theme: ThemeData(
       primarySwatch: getMyMaterianlColor()),
     home: DetailsView(),
   );
  }
}


MaterialColor getMyMaterianlColor(){
  Color color =Color(0xff2490A9);
  return MaterialColor(color.value, {
    50:color .withOpacity(0.1),
    100:color .withOpacity(0.2),
    200:color .withOpacity(0.3),
    300:color .withOpacity(0.4),
    400:color .withOpacity(0.5),
    500:color .withOpacity(0.6),
    600:color .withOpacity(0.7),
    700:color .withOpacity(0.8),
    800:color .withOpacity(0.9),
    900:color
  });
}