import 'package:flutter/material.dart';
import 'package:flutter_application_5/timer_info.dart';
import 'package:provider/provider.dart';

import 'homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'StopWatch',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChangeNotifierProvider(
        create: (context) => TimerInfo(),
        child: HomePage(),
      ),
    );
  }
}
