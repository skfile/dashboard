// import 'package:dashboard/DashSubScreens/SearchField.dart';
import 'package:dashboard/DashSubScreens/SubPageTable.dart';
import 'package:flutter/material.dart';

class MainSubScreen extends StatelessWidget {
  final String name;

  const MainSubScreen(this.name, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          Text(name,
              style: Theme.of(context).textTheme.headline3!,
              textAlign: TextAlign.left),
          SizedBox(
            height: 16,
          ),
          // SearchField(),
          SubPageTable()
        ],
      ),
    );
  }
}
