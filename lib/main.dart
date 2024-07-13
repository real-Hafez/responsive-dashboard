import 'package:flutter/material.dart';
import 'package:responsivedashboard/views/dashboard_view.dart';

void main() {
  runApp(const responsivedashboard());
}

class responsivedashboard extends StatelessWidget {
  const responsivedashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DashboardView(),
    );
  }
}
