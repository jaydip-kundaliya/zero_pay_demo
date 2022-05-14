import 'package:flutter/material.dart';
import 'package:zero_pay_demo/utils/app_text_style.dart';

class SharedButton {
  static Widget roundedCornerButton({
    required String title,
    double radius = 50,
    Color borderColor = const Color(0xFF50CD8D),
  }) =>
      ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          primary: const Color(0xFFFFFFFF),
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
            side: BorderSide(
              color: borderColor,
            ),
          ),
        ),
        child: Text(
          title,
          style: AppTextStyle.poppins(
            fontSize: 14,
            color: const Color(0xFF333333),
          ),
        ),
      );

  static Widget circularButtonWithIcon(IconData icon) => Container(
        width: 28,
        height: 28,
        decoration: BoxDecoration(
          color: const Color(0xFFFFFFFF),
          borderRadius: BorderRadius.circular(50),
          border: Border.all(
            color: const Color(0xFF50CD8D),
          ),
        ),
        child: Icon(
          icon,
          color: const Color(0xFF151522),
        ),
      );
}
