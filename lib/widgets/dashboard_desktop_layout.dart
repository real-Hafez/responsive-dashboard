import 'package:flutter/material.dart';
import 'package:responsivedashboard/models/Allexpensesitem_item)model.dart';
import 'package:responsivedashboard/utils/app_images.dart';
import 'package:responsivedashboard/widgets/All%20Expenses.dart';
import 'package:responsivedashboard/widgets/All%20expenses%20item.dart';
import 'package:responsivedashboard/widgets/custom_drawer.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          flex: 1,
          child: CustomDrawer(),
        ),
        const SizedBox(
          width: 32,
        ),
        Expanded(
            flex: 2,
            child: Column(
              children: [
                const AllExpenses(),
               
              ],
            ))
      ],
    );
  }
}
