import 'package:flutter/material.dart';
import 'package:widget_of_the_week/widgets/tab_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TabBarWidget(),
    );
  }
}
