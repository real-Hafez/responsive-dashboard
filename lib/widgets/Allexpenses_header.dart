import 'package:flutter/material.dart';
import 'package:responsivedashboard/utils/app_styles.dart';
import 'package:responsivedashboard/widgets/range_options.dart';

class Allexpenses_header extends StatelessWidget {
  const Allexpenses_header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'All xpenses',
          style: AppStyles.styleSemiBold20(context),
        ),
        const Expanded(child: SizedBox()),
        const range_options()
      ],
    );
  }
}
