import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:widget_of_the_week/packages/lottie/image_path.dart';

class LottiePackageExampleOne extends StatefulWidget {
  const LottiePackageExampleOne({super.key});

  @override
  State<LottiePackageExampleOne> createState() =>
      _LottiePackageExampleOneState();
}

class _LottiePackageExampleOneState extends State<LottiePackageExampleOne>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
        title: Center(
          child: Text('Lottie'),
        ),
      ),
      body: ListView(
        children: [
          Lottie.network(
            'https://telegram.org/file/464001484/1/bzi7gr7XRGU.10147/815df2ef527132dd23',
            controller: _controller,
          ),
          Lottie.asset(TImageAddress.image1, controller: _controller,
              onLoaded: (compostion) {
            _controller
              ..duration = compostion.duration
              ..repeat();
          }),
          Divider(),
          Lottie.asset(TImageAddress.image1, controller: _controller,
              onLoaded: (compostion) {
            _controller
              ..duration = compostion.duration
              ..repeat();
          }),
          Divider(),
          Lottie.asset(TImageAddress.image1, controller: _controller,
              onLoaded: (compostion) {
            _controller
              ..duration = compostion.duration
              ..repeat();
          }),
          Divider(),
        ],
      ),
    );
  }
}
