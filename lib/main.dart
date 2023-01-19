import 'package:flutter/material.dart';
import 'package:payment_app/dependency/dependency.dart';
import 'screens/home/home.dart';
import 'package:get/get.dart';

void main() => runApp(
      const MyApp(),
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: InitDep(),
      title: 'Payment App',
      home: HomePage(),
    );
  }
}
