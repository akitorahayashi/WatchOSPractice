import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _readCounter() async {
    await SharedPreferences.getInstance().then((pref) {
      _counter = pref.getInt("WatchOSPractice/counter") ?? 0;
    });
    setState(() {});
  }

  void _incrementCounter() async {
    _counter++;
    await SharedPreferences.getInstance().then(
      (pref) => pref.setInt("WatchOSPractice/counter", _counter),
    );
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    _readCounter();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
          // タップしたらカウントを増やす
          child: GestureDetector(
        onTap: _incrementCounter,
        // 円のデザイン
        child: Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.inversePrimary,
              shape: BoxShape.circle),
          // 真ん中の数字
          child: Center(
            child: Text(
              _counter.toString(),
              style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54),
            ),
          ),
        ),
      )), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
