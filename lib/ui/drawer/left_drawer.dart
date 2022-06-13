import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_web_ui/model/drawer_item_data_model.dart';
import 'package:flutter_web_ui/util/color_utils.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<DrawerTileData> drawerItems = [
      DrawerTileData(
          title: "Dashboard", icon: Icons.dashboard_outlined, onTap: () {}),
      DrawerTileData(
          title: "Transaction", icon: Icons.analytics_outlined, onTap: () {}),
      DrawerTileData(title: "Task", icon: Icons.task_outlined, onTap: () {}),
      DrawerTileData(
          title: "Document", icon: Icons.file_copy_outlined, onTap: () {}),
      DrawerTileData(
          title: "Store", icon: Icons.shopping_bag_outlined, onTap: () {}),
      DrawerTileData(
          title: "Notification",
          icon: Icons.notifications_none_outlined,
          onTap: () {}),
      DrawerTileData(
          title: "Profile", icon: Icons.account_circle_outlined, onTap: () {}),
      DrawerTileData(
          title: "Settings", icon: Icons.settings_outlined, onTap: () {}),
    ];
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            child: SvgPicture.asset("assets/flutter-logo.svg", height: 50,),
          ),
          ListView(
            shrinkWrap: true,
            children: List.generate(
              drawerItems.length,
              (index) => DrawerListTile(
                title: drawerItems[index].title,
                icon: drawerItems[index].icon,
                press: drawerItems[index].onTap,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    // For selecting those three line once press "Command+D"
    required this.title,
    required this.icon,
    required this.press,
  }) : super(key: key);

  final String title;
  final IconData icon;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: Icon(
        icon,
        color: colorWhite54,
        size: 16,
      ),
      title: Text(
        title,
        style: const TextStyle(color: colorWhite54),
      ),
    );
  }
}
