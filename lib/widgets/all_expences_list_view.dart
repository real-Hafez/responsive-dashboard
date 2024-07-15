import 'package:flutter/material.dart';
import 'package:responsivedashboard/models/Allexpensesitem_item)model.dart';
import 'package:responsivedashboard/widgets/All%20expenses%20item.dart';

class AllExpencesListView extends StatelessWidget {
  AllExpencesListView({super.key});
  final List<AllexpensesitemItemmodel> items = [
    AllexpensesitemItemmodel(
      image: 'assets/images/balance.svg',
      title: 'Balance',
      date: 'April 2022',
      price: '\$20,129',
    ),
    AllexpensesitemItemmodel(
      image: 'assets/images/income.svg',
      title: 'Income',
      date: 'April 2022',
      price: '\$20,129',
    ),
    AllexpensesitemItemmodel(
      image: 'assets/images/expenses.svg',
      title: 'Expenses',
      date: 'April 2022',
      price: '\$20,129',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          ...items.asMap().entries.map((e) {
            int index = e.key;
            var item = e.value;
            if (index == 1) {
              return Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Allexpensesitem(itemmodel: item),
                ),
              );
            } else {
              return Expanded(child: Allexpensesitem(itemmodel: item));
            }
          })
        ],
      ),
    );
  }
}
