extension DateTimeE on DateTime {
  String? toWeekendDay() {
    const List<String> wkDay = [
      "Mon",
      "Tue",
      "Wed",
      "Thu",
      "Fri",
      "Sat",
      "Sun"
    ];
    switch (weekday) {
      case 1:
        return wkDay[0];
      case 2:
        return wkDay[1];
      case 3:
        return wkDay[2];
      case 4:
        return wkDay[3];
      case 5:
        return wkDay[4];
      case 6:
        return wkDay[5];
      case 7:
        return wkDay[6];
      default:
        return null;
    }
  }
}
