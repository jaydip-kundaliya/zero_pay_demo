import 'package:flutter/material.dart';
import 'package:zero_pay_demo/ui/repayment/previous_transactions.dart';
import 'package:zero_pay_demo/ui/shared/app_bar.dart';
import 'package:zero_pay_demo/ui/shared/button_ui.dart';
import 'package:zero_pay_demo/ui/shared/month_view.dart';
import 'package:zero_pay_demo/ui/shared/payment_info.dart';
import 'package:zero_pay_demo/ui/shared/payment_progress.dart';

class RepaymentPage extends StatelessWidget {
  const RepaymentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: const BaseAppBar(),
      body: SingleChildScrollView(
        child: Column(
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
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 50,
                vertical: 24,
              ),
              child: Divider(
                thickness: 1,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: NextPaymentView(
                amount: 150,
              ),
            ),
            const SizedBox(height: 26),
            Container(
              color: const Color(0xFFECECEC),
              padding: const EdgeInsets.only(
                top: 26,
                bottom: 12,
              ),
              child: const MonthView(
                monthViewStyle: MonthViewStyle.list,
              ),
            ),
            const SizedBox(height: 50),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: PreviousTransactionsView(),
            ),
            const SizedBox(height: 26),
          ],
        ),
      ),
    );
  }
}
