import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class AnimatedTextKitExample extends StatelessWidget {
  const AnimatedTextKitExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Animated Text Kit Example"),
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Be",
                    style: TextStyle(fontSize: 35),
                  ),
                  SizedBox(
                    width: 30,
                    height: 50,
                  ),
                  DefaultTextStyle(
                    style: TextStyle(
                      fontFamily: "Horizon",
                      fontSize: 40.0,
                      color: Colors.black,
                    ),
                    child: AnimatedTextKit(animatedTexts: [
                      RotateAnimatedText("Awesome"),
                      RotateAnimatedText("Beautiful"),
                      RotateAnimatedText("Plan"),
                    ]),
                  )
                ],
              ),
              SizedBox(
                width: 30,
                height: 50,
              ),
              AnimatedTextKit(
                displayFullTextOnTap: true,
                totalRepeatCount: 100,
                animatedTexts: [
                  TypewriterAnimatedText("Hello World",
                      textStyle: TextStyle(fontSize: 50)),
                ],
              ),
              AnimatedTextKit(
                displayFullTextOnTap: true,
                totalRepeatCount: 100,
                animatedTexts: [
                  FadeAnimatedText(
                    'Fade First',
                    textStyle:
                        TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              AnimatedTextKit(
                displayFullTextOnTap: true,
                totalRepeatCount: 100,
                stopPauseOnTap: true,
                animatedTexts: [
                  ScaleAnimatedText(
                    'Then Scale',
                    textStyle:
                        TextStyle(fontSize: 70.0, fontFamily: 'Canterbury'),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              AnimatedTextKit(totalRepeatCount: 100, animatedTexts: [
                TyperAnimatedText("Type Writer Animated",
                    textStyle: TextStyle(fontSize: 30)),
              ]),
              SizedBox(
                height: 40,
              ),
              AnimatedTextKit(
                animatedTexts: [
                  WavyAnimatedText('Hello World'),
                  WavyAnimatedText('Look at the waves'),
                ],
                isRepeatingAnimation: true,
              ),
            ],
          ),
        ),
      )),
    );
  }
}
