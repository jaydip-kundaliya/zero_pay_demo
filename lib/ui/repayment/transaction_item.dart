import 'package:flutter/material.dart';

import '../../utils/app_text_style.dart';

class TransactionTile extends StatelessWidget {
  const TransactionTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 22,
        ),
        const SizedBox(width: 31),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '12 March 2022',
                style: AppTextStyle.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xFF6FC499),
                ),
              ),
              Text(
                'Amazon',
                style: AppTextStyle.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xFF333333),
                ),
              ),
            ],
          ),
        ),
        Text(
          '₹ 900',
          style: AppTextStyle.poppins(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: const Color(0xFF636363),
          ),
        ),
      ],
    );
  }
}
