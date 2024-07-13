import 'package:flutter/material.dart';

class Adabtive_layout extends StatelessWidget {
  const Adabtive_layout(
      {super.key,
      required this.mobile_layout,
      required this.tabletlayout,
      required this.DesktopLayout});
  final WidgetBuilder mobile_layout, tabletlayout, DesktopLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return mobile_layout(context);
        } else if (constraints.maxWidth < 900) {
          return tabletlayout(context);
        } else {
          return DesktopLayout(context);
        }
      },
    );
  }
}
