
class DateFormatter {
  static String toReadableString(DateTime time) {
    final sTime = time.toIso8601String();

    final splitDateAndHour = sTime.split('T');
    final splitDate = splitDateAndHour[0].split('-');
    final splitTime = splitDateAndHour[1].split(':');
    final y = splitDate[0],
        M = splitDate[1],
        d = splitDate[2],
        h = splitTime[0],
        m = splitTime[1];
    return '$h:$m $d/$M/$y';
  }

  static String toApproximateTime(DateTime time) {
    final duration = DateTime.now().difference(time);

    if (duration.inDays != 0) {
      if (duration.inDays >= 365) {
        return '${(duration.inDays/365).truncate()}y';
      }
      else if (duration.inDays >= 30) {
        return '${(duration.inDays/30).truncate()}M';
      }
      return '${duration.inDays}d';
    } else if (duration.inHours != 0) {
      return '${duration.inHours}h';
    } else if (duration.inMinutes != 0) {
      return '${duration.inMinutes}m';
    } else {
      return '${duration.inSeconds}s';
    }
  }
}