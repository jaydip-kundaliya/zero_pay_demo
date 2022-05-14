import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zero_pay_demo/ui/repayment/transaction_item.dart';

import '../../utils/app_text_style.dart';

class PreviousTransactionsView extends StatelessWidget {
  const PreviousTransactionsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Previous Transactions',
          style: AppTextStyle.poppins(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: const Color(0xFF333333),
          ),
        ),
        Text(
          'what if I miss a payment?',
          style: AppTextStyle.poppins(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: const Color(0xFF50CD8D),
          ),
        ),
        const SizedBox(height: 20),
        ListView.separated(
          itemCount: 10,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) => const TransactionTile(),
          separatorBuilder: (BuildContext context, int index) => const Padding(
            padding: EdgeInsets.symmetric(
              vertical: 7.0,
            ),
            child: Divider(),
          ),
        )
      ],
    );
  }
}
