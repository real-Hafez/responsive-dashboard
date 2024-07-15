import 'package:flutter/material.dart';
import 'package:responsivedashboard/models/Allexpensesitem_item)model.dart';
import 'package:responsivedashboard/utils/app_styles.dart';
import 'package:responsivedashboard/widgets/Allexpensesitem_header.dart';

class Allexpensesitem extends StatelessWidget {
  const Allexpensesitem({super.key, required this.itemmodel});
  final AllexpensesitemItemmodel itemmodel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: const Color(0xffFAFAFA),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Allexpensesitem_header(
            image: itemmodel.image,
          ),
          const SizedBox(
            height: 34,
          ),
          Text(
            itemmodel.title,
            style: AppStyles.styleSemiBold16(context),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            itemmodel.date,
            style: AppStyles.styleRegular14(context),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            itemmodel.price,
            style: AppStyles.styleSemiBold24(context),
          )
        ],
      ),
    );
  }
}
