import 'package:flutter/material.dart';

import 'counter/counter.dart';

/// {@template counter_app}
/// A [MaterialApp] which sets the `home` to [CounterPage].
/// {@endtemplate}
class CounterApp extends StatelessWidget {
  /// {@macro counter_app}
  // const CounterApp({Key key})
  //     : super(
  //         key: key,
  //         home: const CounterPage(),
  //       );

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        '/': (context) => CounterPage(),
        '/timer': (context) => CounterPage(),
      },
    );
  }
}
