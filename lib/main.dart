import 'package:flutter/material.dart';
import 'package:flutter_application_1/dependency/dependency.dart';
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
