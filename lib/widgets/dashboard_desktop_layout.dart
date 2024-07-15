import 'package:flutter/material.dart';
import 'package:responsivedashboard/widgets/All%20Expenses.dart';
import 'package:responsivedashboard/widgets/custom_drawer.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          flex: 1,
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 32,
        ),
        Expanded(
            flex: 2,
            child: Column(
              children: [
                Expanded(
                  child: AllExpenses(),
                ),
              ],
            ))
      ],
    );
  }
}
