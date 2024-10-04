import 'package:flutter/material.dart';
import 'package:watchos_practice/model/external/practice_watchos_connectivity.dart';
import './app.dart';

import 'package:flutter_watch_os_connectivity/flutter_watch_os_connectivity.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // conectivity
  PracticeWatchosConnectivity.connectivity.configureAndActivateSession();
  PracticeWatchosConnectivity.connectivity.activationStateChanged
      .listen((activationState) {
    // 現在のActivationStateを通知する
    if (activationState == ActivationState.activated) {
      print("activationDidCompleteWith state= ${activationState.name}");
    }
  });
  runApp(const WatchOSPracticeApp());
}
