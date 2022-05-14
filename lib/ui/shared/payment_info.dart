import 'package:flutter/material.dart';

import '../../utils/app_text_style.dart';
import 'button_ui.dart';

class NextPaymentView extends StatelessWidget {
  const NextPaymentView({
    Key? key,
    this.amount = 0,
    this.enablePayNowButton = false,
  }) : super(key: key);

  final double amount;
  final bool enablePayNowButton;

  @override
  Widget build(BuildContext context) {
    return amount != 0
        ? Row(
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
                    '₹ ${amount.toStringAsFixed(0)}',
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
              enablePayNowButton
                  ? SharedButton.roundedCornerButton(
                      child: Text(
                        'PAY NOW',
                        style: AppTextStyle.poppins(
                          fontSize: 14,
                          color: const Color(0xFF333333),
                        ),
                      ),
                    )
                  : const SizedBox.shrink(),
            ],
          )
        : const SizedBox.shrink();
  }
}
