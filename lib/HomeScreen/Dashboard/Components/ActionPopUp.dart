import 'package:flutter/material.dart';
import 'package:dashboard/HomeScreen/HomeScreen.dart';
import 'package:dashboard/HomeScreen/Dashboard/Dashboard.dart';

class ActionPopUp extends StatefulWidget {
  const ActionPopUp({Key? key}) : super(key: key);

  @override
  _ActionPopUpState createState() => _ActionPopUpState();
}

class _ActionPopUpState extends State<ActionPopUp> {
  @override
  Widget build(BuildContext context) {
    return new AlertDialog(
      title: const Text('Query Actions'),
      content: new Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Select an action below:"),
        ],
      ),
      actions: <Widget>[
        new TextButton(
          style: ButtonStyle(),
          onPressed: () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => HomeScreen(Dashboard()),
            ));
          },
          child: const Text('Query Answer'),
        ),
        new TextButton(
          style: ButtonStyle(),
          onPressed: () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => HomeScreen(Dashboard()),
            ));
          },
          child: const Text('Query Details'),
        ),
        new TextButton(
          style: ButtonStyle(),
          onPressed: () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => HomeScreen(Dashboard()),
            ));
          },
          child: const Text('Query Timeline'),
        ),
        new TextButton(
          style: ButtonStyle(),
          onPressed: () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => HomeScreen(Dashboard()),
            ));
          },
          child: const Text('Delete Query'),
        ),
      ],
    );
  }
}
