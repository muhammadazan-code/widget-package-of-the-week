import 'package:flutter/material.dart';
import 'package:widget_of_the_week/packages/image_picker.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          appBarTheme: AppBarTheme(
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      )),
      home: ImagePickerPackageExample(),
    );
  }
}
