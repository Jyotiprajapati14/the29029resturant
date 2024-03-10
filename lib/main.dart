import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the29029restaurant/view/Splash.dart';
import 'package:the29029restaurant/view/bottombarscreen/homescreen/homescreen.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home:HomeScreen(),
      //Splash(),
    );
  }
}
