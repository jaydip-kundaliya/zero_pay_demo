import 'package:flutter/material.dart';
import 'package:zero_pay_demo/utils/app_text_style.dart';

class SharedButton {
  static Widget roundedButton({
    required String title,
  }) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        primary: const Color(0xFFFFFFFF),
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
          side: const BorderSide(
            color: Color(0xFF50CD8D),
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
  }
}
