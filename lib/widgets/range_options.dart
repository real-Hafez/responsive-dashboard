import 'package:flutter/material.dart';
import 'package:responsivedashboard/utils/app_styles.dart';

class range_options extends StatelessWidget {
  const range_options({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFFF1F1F1)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Row(
        children: [
          Text(
            'Monthly',
            style: AppStyles.styleMedium16(context),
          ),
          const SizedBox(
            width: 18,
          ),
          const Icon(
            Icons.arrow_drop_down,
            size: 35,
            color: Color(0xff064061),
          )
        ],
      ),
    );
  }
}
