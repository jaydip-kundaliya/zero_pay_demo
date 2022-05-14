import 'package:flutter/material.dart';
import 'package:zero_pay_demo/ui/repayments_page.dart';

class ZeroPayApp extends StatelessWidget {
  const ZeroPayApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: RepaymentPage(),
    );
  }
}
