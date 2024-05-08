class TimerHelper {
  static DateTime setStopTime(int durationEnded) {
    final DateTime current = DateTime.now();
    return current.add(
      Duration(seconds: durationEnded),
    );
  }

  static int getRemaining(DateTime endingTime) {
    final DateTime dateTimeNow = DateTime.now();
    Duration remainingTime = endingTime.difference(dateTimeNow);
    return remainingTime.inSeconds;
  }
}
