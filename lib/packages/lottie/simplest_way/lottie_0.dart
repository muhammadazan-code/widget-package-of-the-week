import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:widget_of_the_week/packages/lottie/image_path.dart';

class LottiesPackageExampleZero extends StatelessWidget {
  const LottiesPackageExampleZero({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.blueAccent,
        title: Center(
          child: Text('Lottie'),
        ),
      ),
      body: ListView(
        children: [
          Lottie.asset(TImageAddress.image1),
          Divider(),
          Lottie.asset(TImageAddress.image1),
          Divider(),
          Lottie.asset(TImageAddress.image1),
        ],
      ),
    );
  }
}
