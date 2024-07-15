import 'package:flutter/material.dart';
import 'package:responsivedashboard/models/drawer_item_model.dart';
import 'package:responsivedashboard/utils/app_images.dart';
import 'package:responsivedashboard/widgets/drawer_item.dart';

class drawer_item_list_view extends StatefulWidget {
  const drawer_item_list_view({
    super.key,
  });

  @override
  State<drawer_item_list_view> createState() => _drawer_item_list_viewState();
}

int selectiveindex = 0;

class _drawer_item_list_viewState extends State<drawer_item_list_view> {
  static List<DrawerItemModel> items = [
    DrawerItemModel(
      title: 'Dashboard',
      image: Assets.imagesDashboard,
    ),
    DrawerItemModel(
      title: 'My Transaction',
      image: Assets.imagesMyTransactions,
    ),
    DrawerItemModel(
      title: 'Statistics',
      image: Assets.imagesStatistics,
    ),
    DrawerItemModel(
      title: 'Wallet Account',
      image: Assets.imagesWalletAccount,
    ),
    DrawerItemModel(
      title: 'My Investments',
      image: Assets.imagesMyInvestments,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (selectiveindex != index) {
              setState(() {
                selectiveindex = index;
                print(index);
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: DrawerItem(
              drawerItemModel: items[index],
              isactive: selectiveindex == index,
            ),
          ),
        );
      },
    );
  }
}
