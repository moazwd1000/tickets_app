import 'package:flutter/material.dart';
import 'package:tickets/screens/bottom_bar.dart';
import 'package:tickets/utils/styles.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: kprimary),
      debugShowCheckedModeBanner: false,
      home: BottomBar(),
    );
  }
}
