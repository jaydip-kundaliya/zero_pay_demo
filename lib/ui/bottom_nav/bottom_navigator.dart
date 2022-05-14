import 'package:flutter/material.dart';
import 'package:zero_pay_demo/ui/80597/frame_80597.dart';

class BottomNavigator extends StatefulWidget {
  static final GlobalKey<BottomNavigatorState> bottomNavigatorKey =
      GlobalKey<BottomNavigatorState>();
  BottomNavigator() : super(key: bottomNavigatorKey);

  @override
  State<BottomNavigator> createState() => BottomNavigatorState();
}

class BottomNavigatorState extends State<BottomNavigator>
    with TickerProviderStateMixin {
  Widget? page;
  double height = 120;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          page ?? const UpdateLimitPage(),
          // Align(
          //   alignment: Alignment.bottomCenter,
          //   child: SizedBox(
          //     height: 120,
          //     child: Container(
          //       height: 80,
          //       decoration: const BoxDecoration(
          //         color: Colors.white,
          //         borderRadius: BorderRadius.only(
          //           topLeft: Radius.circular(30),
          //           topRight: Radius.circular(30),
          //         ),
          //       ),
          //       child: Row(
          //         mainAxisAlignment: MainAxisAlignment.spaceAround,
          //         children: [
          //           Image.asset(
          //             'assets/images/card.png',
          //             width: 40,
          //           ),
          //           Image.asset(
          //             'assets/images/cancel.png',
          //             width: 40,
          //           ),
          //         ],
          //       ),
          //     ),
          //   ),
          // ),
          // Align(
          //   alignment: Alignment.bottomCenter,
          //   child: GestureDetector(
          //     dragStartBehavior: DragStartBehavior.start,
          //     onVerticalDragStart: (DragStartDetails details) {
          //       debugPrint(details.localPosition.toString());
          //     },
          //     child: Padding(
          //       padding: const EdgeInsets.only(bottom: 90.0),
          //       child: Container(
          //         width: 55,
          //         height: 55,
          //         decoration: BoxDecoration(
          //           color: const Color(0xFFFFFFFF),
          //           borderRadius: BorderRadius.circular(50),
          //           boxShadow: const [
          //             BoxShadow(
          //               color: Color(0xFFFFFFFF),
          //               offset: Offset(1, 0),
          //             ),
          //             BoxShadow(
          //               color: Color(0xFFFFFFFF),
          //               spreadRadius: 2,
          //               offset: Offset(0, 1),
          //             ),
          //           ],
          //         ),
          //         child: Image.asset(
          //           'assets/images/drag.png',
          //           width: 18.16,
          //           height: 20.31,
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
      bottomSheet: BottomSheet(
        backgroundColor: Colors.transparent,
        enableDrag: true,
        animationController: AnimationController(
          vsync: this,
          duration: Duration(milliseconds: 500),
        ),
        onDragStart: (DragStartDetails onDragStart) {
          // print(onDragStart.localPosition..toString());
          // height = 700;
          // setState(() {});
        },
        builder: (context) => SizedBox(
          height: height,
          child: Container(
            height: 80,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(
                  'assets/images/card.png',
                  width: 40,
                ),
                Image.asset(
                  'assets/images/cancel.png',
                  width: 40,
                ),
              ],
            ),
          ),
        ),
        onClosing: () {},
      ),
    );
  }
}
