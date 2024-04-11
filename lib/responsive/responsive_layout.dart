import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileScreenLayout;
  final Widget WebScreenLayoutt;
  const ResponsiveLayout(
      {super.key,
      required this.mobileScreenLayout,
      required this.WebScreenLayoutt});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 900) {
        return WebScreenLayoutt;
      }
      return mobileScreenLayout;
    });
  }
}
