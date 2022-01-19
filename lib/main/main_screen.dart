import 'package:admin_panel_responsive/main/Widgets/DashbordScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Row(
        children: [
          Expanded(
              //it takes 1/6 part of screen
              //use for drawer type space flex 0 and other expandeed flex 5
              child: Drawer(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  DrawerHeader(
                    child: Image.asset("assets/images/logo.png"),
                  ),
                  DrawerMenuList(
                    onpress: () {},
                    title: "Dashboard",
                    svgImg: "assets/icons/menu_dashbord.svg",
                  ),
                  DrawerMenuList(
                    onpress: () {},
                    title: "Transaction",
                    svgImg: "assets/icons/menu_tran.svg",
                  ),
                  DrawerMenuList(
                    onpress: () {},
                    title: "Task",
                    svgImg: "assets/icons/menu_task.svg",
                  ),
                  DrawerMenuList(
                    onpress: () {},
                    title: "Documents",
                    svgImg: "assets/icons/menu_doc.svg",
                  ),
                  DrawerMenuList(
                    onpress: () {},
                    title: "Store",
                    svgImg: "assets/icons/menu_store.svg",
                  ),
                  DrawerMenuList(
                    onpress: () {},
                    title: "Notification",
                    svgImg: "assets/icons/menu_notification.svg",
                  ),
                  DrawerMenuList(
                    onpress: () {},
                    title: "Profile",
                    svgImg: "assets/icons/menu_profile.svg",
                  ),
                  DrawerMenuList(
                    onpress: () {},
                    title: "Settings",
                    svgImg: "assets/icons/menu_setting.svg",
                  ),
                ],
              ),
            ),
          )),
          Expanded(
              flex: 5,
              //use for big space
              //it takes 5/6 part of the screen
              child: Column(
                children: [
                  DashScreen(),
                ],
              )),
        ],
      )),
    );
  }
}

class DrawerMenuList extends StatelessWidget {
  const DrawerMenuList({
    Key? key,
    required this.title,
    required this.svgImg,
    required this.onpress,
  }) : super(key: key);
  final String title, svgImg;
  final VoidCallback onpress;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      horizontalTitleGap: 0.0,
      onTap: onpress,
      title: Text(
        title,
        style: TextStyle(color: Colors.white54),
      ),
      leading: SvgPicture.asset(
        svgImg,
        color: Colors.white54,
        height: 16,
      ),
    );
  }
}
