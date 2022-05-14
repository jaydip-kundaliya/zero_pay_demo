import 'package:flutter/material.dart';
import 'package:zero_pay_demo/models/event.dart';
import 'package:zero_pay_demo/ui/shared/month_view.dart';
import 'package:zero_pay_demo/utils/app_text_style.dart';

import '../../utils/extension.dart';

class MonthItem extends StatelessWidget {
  const MonthItem({
    Key? key,
    required this.event,
    required this.index,
    this.monthViewStyle = MonthViewStyle.grid,
    required this.lastIndex,
  }) : super(key: key);

  final Event event;
  final int index;
  final MonthViewStyle monthViewStyle;
  final int lastIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFECECEC),
      child: monthViewStyle == MonthViewStyle.list
          ? ListItem(
              event: event,
              index: index,
              lastIndex: lastIndex,
            )
          : GridItem(event: event, index: index),
    );
  }
}

class GridItem extends StatelessWidget {
  const GridItem({Key? key, required this.event, required this.index})
      : super(key: key);

  final Event event;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Column(
            children: [
              Text(
                event.eventTime?.toWeekendDay()?.toUpperCase() ?? '',
                style: AppTextStyle.poppins(
                  fontSize: 11,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF333333),
                ),
              ),
              Text(
                event.eventTime?.day.toString() ?? '',
                style: AppTextStyle.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF333333),
                ),
              ),
              event.eventName != null
                  ? EventView(
                      event: event,
                    )
                  : const SizedBox(),
            ],
          ),
        ),
        _enableVerticalDivider(index)
            ? const Padding(
                padding: EdgeInsets.fromLTRB(20, 100, 20, 0),
                child: Divider(
                  color: Color(0xFF333333),
                ),
              )
            : const SizedBox(),
        _enableHorizontalDivider(index)
            ? const Padding(
                padding: EdgeInsets.fromLTRB(130, 0, 0, 50),
                child: VerticalDivider(
                  color: Color(0xFF333333),
                ),
              )
            : const SizedBox(),
      ],
    );
  }

  bool _enableHorizontalDivider(int index) {
    if (index != 1 && index != 3 && index != 6) {
      return true;
    }
    return true;
  }

  bool _enableVerticalDivider(int index) {
    if (index != 6 && index != 7 && index != 8) {
      return true;
    }
    return false;
  }
}

class ListItem extends StatelessWidget {
  const ListItem({
    Key? key,
    required this.event,
    required this.index,
    required this.lastIndex,
  }) : super(key: key);

  final Event event;
  final int index;
  final int lastIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Column(
          children: [
            Text(
              event.eventTime?.toWeekendDay()?.toUpperCase() ?? '',
              style: AppTextStyle.poppins(
                fontSize: 11,
                fontWeight: FontWeight.w400,
                color: const Color(0xFF333333),
              ),
            ),
            Text(
              event.eventTime?.day.toString() ?? '',
              style: AppTextStyle.poppins(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: const Color(0xFF333333),
              ),
            ),
            event.eventName != null
                ? EventView(
                    event: event,
                  )
                : const SizedBox(),
          ],
        ),
        index != 0 || index != lastIndex
            ? Container(
                height: 100,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: const VerticalDivider(
                  color: Color(0xFF333333),
                ),
              )
            : const SizedBox.shrink()
      ],
    );
  }
}

class EventView extends StatelessWidget {
  const EventView({
    Key? key,
    required this.event,
  }) : super(key: key);

  final Event event;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 88.94,
          decoration: BoxDecoration(
            color: const Color(0xFFFFFFFF),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: const Color(0xFF6FC499),
            ),
          ),
          padding: const EdgeInsets.symmetric(
            vertical: 2,
          ),
          child: Center(
            child: Text(
              event.eventName?.toUpperCase() ?? '',
              style: AppTextStyle.poppins(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: const Color(0xFF333333),
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Container(
            width: 17,
            height: 17,
            decoration: BoxDecoration(
              color: const Color(0xFFFFFFFF),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: const Color(0xFF6FC499),
              ),
            ),
            child: Center(
              child: Image.asset(
                Event.getEventImage(
                  event.eventType,
                ),
                height: 10,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
