import 'package:flutter/material.dart';
import 'package:widget_of_the_week/widgets/streamBuilder/stream_builder_view.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StreamBuilderExample(),
    );
  }
}
