import 'package:flutter/material.dart';
import 'package:zero_pay_demo/ui/bottom_nav/bottom_navigator.dart';
import 'package:zero_pay_demo/ui/repayment/repayments_page.dart';
import 'package:zero_pay_demo/ui/shared/app_bar.dart';
import 'package:zero_pay_demo/ui/shared/button_ui.dart';
import 'package:zero_pay_demo/ui/shared/month_view.dart';
import 'package:zero_pay_demo/ui/shared/payment_info.dart';
import 'package:zero_pay_demo/ui/shared/payment_progress.dart';

import '../../utils/app_text_style.dart';

class UpdateLimitPage extends StatelessWidget {
  const UpdateLimitPage({Key? key}) : super(key: key);

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
              child: Text(
                'UPGRADE LIMIT',
                style: AppTextStyle.poppins(
                  fontSize: 14,
                  color: const Color(0xFF333333),
                ),
              ),
              onPress: () {
                BottomNavigator.bottomNavigatorKey.currentState?.page =
                    const RepaymentPage();
                BottomNavigator.bottomNavigatorKey.currentState
                    ?.setState(() {});
              },
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
                amount: 900,
                enablePayNowButton: true,
              ),
            ),
            const SizedBox(height: 26),
            Container(
              color: const Color(0xFFECECEC),
              padding: const EdgeInsets.only(
                top: 26,
                bottom: 12,
              ),
              child: const MonthView(),
            ),
            const SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}
