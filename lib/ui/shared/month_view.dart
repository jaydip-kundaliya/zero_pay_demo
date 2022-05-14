import 'package:flutter/material.dart';
import 'package:zero_pay_demo/models/event.dart';
import 'package:zero_pay_demo/ui/shared/button_ui.dart';
import 'package:zero_pay_demo/ui/shared/month_item.dart';

import '../../utils/app_text_style.dart';

enum MonthViewStyle { grid, list }

class MonthView extends StatelessWidget {
  const MonthView({
    Key? key,
    this.monthViewStyle = MonthViewStyle.grid,
  }) : super(key: key);

  final MonthViewStyle monthViewStyle;
  static final List<Event> _events = [
    Event(
      eventName: 'Payment',
      eventTime: DateTime(2022, 5, 18),
      eventType: EventType.money,
    ),
    Event(
      eventName: 'Zara',
      eventTime: DateTime(2022, 5, 19),
      eventType: EventType.sale,
    ),
    Event(
      eventName: 'ANJU’s Birthday',
      eventTime: DateTime(2022, 5, 20),
      eventType: EventType.birthDay,
    ),
    Event(
      eventName: 'Netflix subscription',
      eventTime: DateTime(2022, 5, 21),
      eventType: EventType.netflix,
    ),
    Event(
      eventName: '20% off',
      eventTime: DateTime(2022, 5, 22),
      eventType: EventType.sale,
    ),
    Event(
      eventName: 'ANJU’s Birthday',
      eventTime: DateTime(2022, 5, 23),
      eventType: EventType.birthDay,
    ),
    Event(
      eventName: 'Payment',
      eventTime: DateTime(2022, 5, 24),
      eventType: EventType.money,
    ),
    Event(
      eventTime: DateTime(2022, 5, 25),
    ),
    Event(
      eventTime: DateTime(2022, 5, 26),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFECECEC),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'MONTH',
                          style: AppTextStyle.poppins(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xFF333333),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Image.asset(
                            'assets/images/calender.png',
                            width: 16,
                            // height: 17.78,
                          ),
                        )
                      ],
                    ),
                    monthViewStyle == MonthViewStyle.list
                        ? const SizedBox.shrink()
                        : Text(
                            'change view >',
                            style: AppTextStyle.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xFF50CD8D),
                            ),
                            textAlign: TextAlign.start,
                          ),
                  ],
                ),
                SharedButton.circularButtonWithIcon(Icons.add),
              ],
            ),
          ),
          const SizedBox(height: 25),
          monthViewStyle == MonthViewStyle.list
              ? _CalenderList(events: _events)
              : _CalenderGrid(events: _events)
        ],
      ),
    );
  }
}

class _CalenderGrid extends StatelessWidget {
  const _CalenderGrid({
    Key? key,
    this.events = const [],
  }) : super(key: key);

  final List<Event> events;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 9,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
      itemBuilder: (BuildContext context, int index) => MonthItem(
        event: events[index],
        index: index,
        lastIndex: events.length - 1,
      ),
    );
  }
}

class _CalenderList extends StatelessWidget {
  const _CalenderList({
    Key? key,
    this.events = const [],
  }) : super(key: key);

  final List<Event> events;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 30.0,
        ),
        child: Row(
          children: List.generate(
            events.length,
            (index) => MonthItem(
              event: events[index],
              index: index,
              monthViewStyle: MonthViewStyle.list,
              lastIndex: events.length - 1,
            ),
          ),
        ),
      ),
    );
  }
}
