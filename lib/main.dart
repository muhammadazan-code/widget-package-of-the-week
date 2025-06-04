import 'package:flutter/material.dart';
import 'package:widget_of_the_week/packages/responsiveness.dart';
import 'package:widget_of_the_week/screens/dekstop_screen.dart';
import 'package:widget_of_the_week/screens/mobile_screen.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        builder: (context, widget) => ResponsiveBreakpoints.builder(
              child: widget!,
              breakpoints: [
                const Breakpoint(start: 0, end: 450, name: "M O B I L E"),
                const Breakpoint(start: 451, end: 800, name: "Tablet"),
                const Breakpoint(start: 801, end: 1920, name: "D E S K T O P"),
                const Breakpoint(
                    start: 1921, end: double.infinity, name: "4 K"),
              ],
            ),
        theme: ThemeData(
            primarySwatch: Colors.lightBlue,
            appBarTheme: AppBarTheme(
              backgroundColor: Colors.blueAccent,
              foregroundColor: Colors.white,
            )),
        home: ResponsivenessLayout(
          mobileBody: MobileScreen(),
          desktopBody: DekstopScreen(),
        ));
  }
}
