enum EventType {
  money,
  sale,
  birthDay,
  netflix,
}

class Event {
  Event({
    this.eventName,
    this.eventTime,
    this.eventType,
  });

  String? eventName;
  DateTime? eventTime;
  EventType? eventType;

  static String getEventImage(EventType? event) {
    switch (event) {
      case EventType.money:
        return 'assets/images/rupee.png';
      case EventType.sale:
        return 'assets/images/sale.png';
      case EventType.birthDay:
        return 'assets/images/birthday.png';
      case EventType.netflix:
        return 'assets/images/netflix.png';
      default:
        return 'assets/images/rupee.png';
    }
  }
}
