import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsivedashboard/models/drawer_item_model.dart';
import 'package:responsivedashboard/utils/app_styles.dart';

class unactive_toogle_item extends StatelessWidget {
  const unactive_toogle_item({
    super.key,
    required this.drawerItemModel,
  });

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(
        drawerItemModel.image,
      ),
      title: Text(
        drawerItemModel.title,
        style: AppStyles.styleMedium16(
          context,
        ),
      ),
    );
  }
}

class active_toogle_item extends StatelessWidget {
  const active_toogle_item({
    super.key,
    required this.drawerItemModel,
  });

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(
        drawerItemModel.image,
      ),
      title: Text(
        drawerItemModel.title,
        style: AppStyles.styleBold16(),
      ),
      trailing: Container(
        width: 3.27,
        height: 48,
        decoration: const BoxDecoration(
            color: Color(
          0xff4eb7f2,
        )),
      ),
    );
  }
}
