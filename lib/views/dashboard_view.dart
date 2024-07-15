import 'package:flutter/material.dart';
import 'package:responsivedashboard/widgets/adabtive_layout_widget.dart';
import 'package:responsivedashboard/widgets/dashboard_desktop_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7f9fa),
      body: Adabtive_layout(
        mobile_layout: (context) {
          return const SizedBox();
        },
        tabletlayout: (context) {
          return const SizedBox();
        },
        DesktopLayout: (context) {
          return const DashboardDesktopLayout();
        },
      ),
    );
  }
}
