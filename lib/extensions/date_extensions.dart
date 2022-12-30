import 'package:intl/intl.dart';

extension DateExtensions on DateTime {
  bool isSameDay(DateTime other) {
    return year == other.year && month == other.month && day == other.day;
  }

  bool isToday() {
    final today = DateTime.now();
    return today.year == year && today.month == month && today.day == day;
  }

  bool isYesterday() {
    final yesterday = DateTime.now().subtract(const Duration(days: 1));
    return yesterday.year == year &&
        yesterday.month == month &&
        yesterday.day == day;
  }

  bool isBetween(DateTime startDate, DateTime endDate) {
    return isAfter(startDate) && isBefore(endDate);
  }

  String get formattedDate {
    DateFormat format;
    if (year != DateTime.now().year) {
      format = DateFormat('E, d MMM yyyy');
    } else if (isToday()) {
      return 'Today';
    } else if (isYesterday()) {
      return 'Yesterday';
    } else {
      format = DateFormat('E, d MMM');
    }

    return format.format(this);
  }

  String get shortDate {
    final format = DateFormat('d MMM');
    return format.format(this);
  }

  DateTime get simpleDate {
    return DateTime(year, month, day);
  }

  String get nameOfDay {
    final format = DateFormat('EEEE');
    return format.format(this);
  }

  String get time {
    final format = DateFormat('HH:mm');
    return format.format(this);
  }
}
