import 'package:flutter/material.dart';
import 'package:zero_pay_demo/models/event.dart';
import 'package:zero_pay_demo/ui/80597/month_item.dart';
import 'package:zero_pay_demo/ui/shared/button_ui.dart';

import '../../utils/app_text_style.dart';

class MonthView extends StatelessWidget {
  const MonthView({Key? key}) : super(key: key);

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
                  children: [
                    Text(
                      'MONTH',
                      style: AppTextStyle.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFF333333),
                      ),
                    ),
                    Text(
                      'change view >',
                      style: AppTextStyle.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFF50CD8D),
                      ),
                    ),
                  ],
                ),
                SharedButton.circularButtonWithIcon(Icons.add),
              ],
            ),
          ),
          const SizedBox(height: 25),
          _CalenderGrid(
            events: _events,
          )
        ],
      ),
    );
  }
}

class _CalenderGrid extends StatelessWidget {
  const _CalenderGrid({
    Key? key,
    required this.events,
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
      ),
    );
  }
}
