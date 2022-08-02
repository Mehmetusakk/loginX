import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loginx/screens/SplashScreen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() => runApp(GetMaterialApp(home: MyApp()));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lider Kurye',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.blue,
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const SplashScreen(),
    );
  }
}
