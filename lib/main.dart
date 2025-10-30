import 'package:flutter/material.dart';
import 'package:widget_of_the_week/widgets/data_table/data_table.dart';

void main(List<String> args) {
  runApp(MyApp());
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       themeMode: ThemeMode.system,
//       theme: ThemeData(
//           inputDecorationTheme: InputDecorationTheme(
//               border: OutlineInputBorder(),
//               filled: true,
//               labelStyle: TextStyle(color: Colors.black),
//               fillColor: Colors.white)),
//       darkTheme: ThemeData(
//           inputDecorationTheme: InputDecorationTheme(
//               border: OutlineInputBorder(),
//               fillColor: Colors.black,
//               filled: true,
//               labelStyle: TextStyle(
//                 color: Colors.white,
//               ))),
//       home: Scaffold(
//           appBar: AppBar(),
//           body: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Center(
//                   child: TextFormField(
//                     decoration: InputDecoration(
//                       labelText: "Email",
//                     ),
//                   ),
//                 )
//               ])),
//     );
//   }
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DataTableScreen(),
    );
  }
}
