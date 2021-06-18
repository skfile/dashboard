import 'package:flutter/material.dart';
import 'package:dashboard/HomeScreen/Dashboard/Dashboard.dart';
import 'package:dashboard/HomeScreen/HomeScreen.dart';
import 'package:dashboard/DashSubScreens/MainSubScreen.dart';

// import 'package:flutter_svg/flutter_svg.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerListTile(
              title: "Dashboard",
              iconCode: 57777,
              press: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => HomeScreen(Dashboard()),
                ));
              }),
          DrawerListTile(
            title: "Queries",
            iconCode: 57777,
            press: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => HomeScreen(MainSubScreen("Queries")),
              ));
            },
          ),
          DrawerListTile(
            title: "Store Visits",
            iconCode: 57777,
            press: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => HomeScreen(MainSubScreen("Store Visits")),
              ));
            },
          ),
          DrawerListTile(
            title: "Phone Calls",
            iconCode: 57777,
            press: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => HomeScreen(MainSubScreen("Phone Calls")),
              ));
            },
          ),
          DrawerListTile(
            title: "Video Calls",
            iconCode: 57777,
            press: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => HomeScreen(MainSubScreen("Video Calls")),
              ));
            },
          ),
          DrawerListTile(
            title: "Store Visits",
            iconCode: 57777,
            press: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => HomeScreen(MainSubScreen("Store Visits")),
              ));
            },
          ),
          DrawerListTile(
            title: "Rep Details",
            iconCode: 57777,
            press: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => HomeScreen(MainSubScreen("Rep Details")),
              ));
            },
          ),
          DrawerListTile(
            title: "Rep Stats",
            iconCode: 57777,
            press: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => HomeScreen(MainSubScreen("Rep Stats")),
              ));
            },
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
    required this.iconCode,
    required this.press,
  }) : super(key: key);

  final String title;
  final int iconCode;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: Icon(
          IconData(
            iconCode,
            fontFamily: 'MaterialIcons',
          ),
          size: 16,
          color: Colors.indigo),
      title: Text(
        title,
        style: TextStyle(color: Colors.indigo),
      ),
    );
  }
}
