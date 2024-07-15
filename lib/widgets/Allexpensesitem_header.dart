import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Allexpensesitem_header extends StatelessWidget {
  const Allexpensesitem_header({super.key, required this.image});
  final String image;
  //final AllexpensesitemItemmodel allexpensesitemItemmodel;
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Row(children: [
        Container(
          width: 60,
          height: 60,
          decoration: const ShapeDecoration(
            color: Color(0xFFFAFAFA),
            shape: OvalBorder(),
          ),
          child: SvgPicture.asset(image),
        ),
        Transform.rotate(
            angle: -1.57079633 * 2,
            child: const Icon(
              Icons.arrow_back_ios_new_outlined,
              color: Color(0xff064061),
            )),
      ]),
    );
  }
}
