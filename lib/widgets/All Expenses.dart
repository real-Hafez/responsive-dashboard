import 'package:flutter/material.dart';
import 'package:responsivedashboard/models/Allexpensesitem_item)model.dart';
import 'package:responsivedashboard/utils/app_images.dart';
import 'package:responsivedashboard/widgets/All%20expenses%20item.dart';
import 'package:responsivedashboard/widgets/Allexpenses_header.dart';

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
          Allexpensesitem(
              itemmodel: AllexpensesitemItemmodel(
                  image: Assets.imagesIncome,
                  title: 'income',
                  date: 'April 2022',
                  price: r"$20,129"))
        ],
      ),
    );
  }
}
