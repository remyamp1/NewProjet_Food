import 'package:flutter/material.dart';
import 'package:newporjet_foodapp/details.dart';
import 'package:newporjet_foodapp/first.dart';
import 'package:newporjet_foodapp/second.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, home: DetailsExample());
  }
}
