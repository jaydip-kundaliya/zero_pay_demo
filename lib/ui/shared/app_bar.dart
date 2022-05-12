import 'package:flutter/material.dart';
import 'package:zero_pay_demo/utils/app_text_style.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  const BaseAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFFFFFFFF),
      elevation: 0,
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            color: const Color(0xFFFFFFFF),
            borderRadius: BorderRadius.circular(50),
            boxShadow: [
              BoxShadow(
                spreadRadius: 0.5,
                color: const Color(0xFF000000).withOpacity(0.15),
                offset: const Offset(0, 0.5),
              ),
              BoxShadow(
                spreadRadius: 0.5,
                color: const Color(0xFF000000).withOpacity(0.15),
                offset: const Offset(0, 0.5),
              ),
            ],
          ),
          child: const Center(
            child: Icon(
              Icons.arrow_back_ios_outlined,
              color: Color(0xFF5EC58F),
            ),
          ),
        ),
      ),
      centerTitle: true,
      title: Text(
        'Repayments',
        style: AppTextStyle.poppins(
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: const Color(0xFF50CD8D),
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
