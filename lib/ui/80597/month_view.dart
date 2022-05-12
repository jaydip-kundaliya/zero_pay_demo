import 'package:flutter/material.dart';
import 'package:zero_pay_demo/models/event.dart';
import 'package:zero_pay_demo/ui/80597/month_item.dart';

class MonthView extends StatelessWidget {
  const MonthView({Key? key}) : super(key: key);

  static final List<Event> events = [
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
      child: GridView.builder(
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
      ),
    );
  }
}
