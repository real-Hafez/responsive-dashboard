import 'package:flutter/material.dart';
import 'package:responsivedashboard/models/drawer_item_model.dart';
import 'package:responsivedashboard/utils/app_images.dart';
import 'package:responsivedashboard/widgets/active_and_unactive.dart';
import 'package:responsivedashboard/widgets/drawer_item.dart';
import 'package:responsivedashboard/widgets/drawer_item_list_view.dart';
import 'package:responsivedashboard/widgets/user_info_list.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomScrollView(
        slivers: <Widget>[
          const SliverToBoxAdapter(
            child: UserInfoList(
                image: Assets.imagesAvatar1,
                title: 'Lekan Okeowo',
                subtitle: 'demo@gmail.com'),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          const drawer_item_list_view(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                const Expanded(
                    child: SizedBox(
                  height: 20,
                )),
                unactive_toogle_item(
                  drawerItemModel: DrawerItemModel(
                      title: 'setting system', image: Assets.imagesSettings),
                ),
                unactive_toogle_item(
                  drawerItemModel: DrawerItemModel(
                    title: 'Logout',
                    image: Assets.imagesLogout,
                  ),
                ),
                const SizedBox(
                  height: 48,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
