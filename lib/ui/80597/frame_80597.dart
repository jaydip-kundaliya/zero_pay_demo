import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zero_pay_demo/ui/80597/month_view.dart';
import 'package:zero_pay_demo/ui/shared/app_bar.dart';
import 'package:zero_pay_demo/ui/shared/button_ui.dart';
import 'package:zero_pay_demo/ui/shared/payment_progress.dart';
import 'package:zero_pay_demo/utils/app_text_style.dart';

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
            const PaymentProgress(),
            SharedButton.roundedButton(
              title: 'UPGRADE LIMIT',
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'YOUR NEXT PAYMENT IS',
                      style: AppTextStyle.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xFFABABAB),
                      ),
                    ),
                    Text(
                      '₹ 900',
                      style: AppTextStyle.poppins(
                        fontSize: 38,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFF6FC499),
                      ),
                    ),
                    Text(
                      'on april 18th',
                      style: AppTextStyle.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFFA4A4A4),
                      ),
                    ),
                  ],
                ),
                SharedButton.roundedButton(
                  title: 'PAY NOW',
                ),
              ],
            ),
            const SizedBox(height: 26),
            Container(
              color: const Color(0xFFECECEC),
              padding: const EdgeInsets.only(
                top: 26,
                bottom: 12,
              ),
              child: MonthView(),
            ),
          ],
        ),
      ),
    );
  }
}
