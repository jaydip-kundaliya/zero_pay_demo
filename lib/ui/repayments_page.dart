import 'package:flutter/material.dart';
import 'package:zero_pay_demo/ui/shared/app_bar.dart';
import 'package:zero_pay_demo/ui/shared/button_ui.dart';
import 'package:zero_pay_demo/ui/shared/payment_progress.dart';

class RepaymentPage extends StatelessWidget {
  const RepaymentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: const BaseAppBar(),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: PaymentProgress(),
          ),
          SharedButton.roundedCornerButton(
            title: 'UPGRADE LIMIT',
            radius: 8,
            borderColor: const Color(0xFF4776E6),
          ),
        ],
      ),
    );
  }
}
