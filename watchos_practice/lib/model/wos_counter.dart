import './external/practice_watchos_connectivity.dart';

class PWCounter {
  static int count = 0;

  static void incrementCounter() {
    PWCounter.count += 1;
    PracticeWatchOSConnectivity.sendJsonToAppleWatch();
  }
}
