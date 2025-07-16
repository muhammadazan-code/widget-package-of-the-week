import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';

class RatingScreen extends StatefulWidget {
  const RatingScreen({super.key});

  @override
  State<RatingScreen> createState() => _RatingScreenState();
}

class _RatingScreenState extends State<RatingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Flutter Rating Package"),
        ),
      ),
      body: SafeArea(child: Column(children: [
        StarRating(
          starCount: 4,
          size: 50,
          color: Colors.yellow,
          allowHalfRating: true,
        )
      ],)),
    );
  }
}
