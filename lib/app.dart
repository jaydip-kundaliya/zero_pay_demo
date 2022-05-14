import 'package:flutter/material.dart';
import 'package:zero_pay_demo/ui/bottom_nav/bottom_navigator.dart';

class ZeroPayApp extends StatelessWidget {
  const ZeroPayApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BottomNavigator(),
    );
  }
}
