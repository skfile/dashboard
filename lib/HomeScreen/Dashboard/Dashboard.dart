import 'package:flutter/material.dart';
import 'package:dashboard/HomeScreen/Dashboard/Components/DataTablesQ.dart';
import 'package:dashboard/HomeScreen/Dashboard/Components/CounterTile.dart';
import 'package:dashboard/HomeScreen/Dashboard/Components/DataTablesPhone.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [CounterTiles(), DataTablesQ(), DataTablesPhone()],
            )));
  }
}
