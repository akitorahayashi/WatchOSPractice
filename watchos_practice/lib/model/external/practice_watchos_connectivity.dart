import 'dart:convert';

import 'package:flutter_watch_os_connectivity/flutter_watch_os_connectivity.dart';
import 'package:watchos_practice/model/wos_counter.dart';

class PracticeWatchosConnectivity {
  static final FlutterWatchOsConnectivity connectivity =
      FlutterWatchOsConnectivity();

  static Future<void> sendJsonToAppleWatch() async {
    bool isReachable =
        await PracticeWatchosConnectivity.connectivity.getReachability();
    if (isReachable) {
      await PracticeWatchosConnectivity.connectivity
          .sendMessage({"count": PWCounter.count.toString()});
    } else {
      print("No reachable watches.");
    }
  }
}
