import 'package:flutter/material.dart';
// import 'package:dashboard/controllers/MenuController.dart';
import 'package:dashboard/responsive.dart';
import 'package:dashboard/HomeScreen/components/SideMenu.dart';

class HomeScreen extends StatelessWidget {
  final Widget mainScreen;

  const HomeScreen(this.mainScreen, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kinger Analytics"),
        backgroundColor: Colors.black,
        actions: [
          InkWell(
              onTap: () {
                print('Click Profile Pic');
              },
              child: Padding(
                  padding: EdgeInsets.all(8),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Icon(Icons.person)
                      // Image.asset(
                      //   'assets/images/profile_pic.png',
                      // ),
                      ))),
          IconButton(
            padding: EdgeInsets.all(16),
            icon: Icon(Icons.logout),
            onPressed: () {
              print('Click start');
            },
          ),
        ],
      ),
      drawer: SideMenu(),
      body: Container(
          padding: EdgeInsets.symmetric(vertical: 16),
          child: Row(
            children: [
              // We want this side menu only for large screen
              if (Responsive.isDesktop(context))
                Expanded(
                  // recall default flex = 1
                  child: SideMenu(),
                ),
              Expanded(
                // It takes 5/6 part of the screen
                flex: 5,
                child: mainScreen,
              ),
            ],
          )),
    );
  }
}
