import 'package:flutter/material.dart';
import 'package:responsivedashboard/widgets/Allexpenses_header.dart';
import 'package:responsivedashboard/widgets/all_expences_list_view.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(
        20,
      ),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        color: Colors.white,
      ),
      child: Column(
        children: [
          const Allexpenses_header(),
          const SizedBox(
            height: 16,
          ),
          AllExpencesListView(),
        ],
      ),
    );
  }
}
