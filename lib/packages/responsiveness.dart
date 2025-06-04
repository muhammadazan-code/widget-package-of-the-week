import 'package:flutter/material.dart';

class ResponsivenessLayout extends StatelessWidget {
  final Widget mobileBody;
  final Widget desktopBody;
  const ResponsivenessLayout(
      {super.key, required this.desktopBody, required this.mobileBody});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraint) {
          if (constraint.maxWidth < 600) {
            return mobileBody;
          } else {
            return desktopBody;
          }
        },
      ),
    );
  }
}
