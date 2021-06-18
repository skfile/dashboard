import 'package:dashboard/dynamicData/PendingPhone.dart';
import 'package:flutter/material.dart';
import 'package:dashboard/HomeScreen/HomeScreen.dart';
import 'package:dashboard/HomeScreen/Dashboard/Components/ActionPopUp.dart';

class DataTablesPhone extends StatelessWidget {
  const DataTablesPhone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.blue[50],
          borderRadius: const BorderRadius.all(Radius.circular(20)),
        ),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Pending Phone Calls",
                style: Theme.of(context).textTheme.headline6,
                textAlign: TextAlign.left,
                /* style: Theme.of(context).textTheme.headline6!*/
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: DataTable(
                  columns: List.generate(
                    phoneNames.length,
                    (index) => recentDataColumn(phoneNames[index]),
                  ),
                  rows: List.generate(
                    phones.length,
                    (index) => recentFileDataRow(phones[index], context),
                  ),
                ),
              )
            ]));
  }
}

DataRow recentFileDataRow(PendingPhone fileInfo, BuildContext context) {
  return DataRow(
    cells: [
      DataCell(Text(fileInfo.recievedDate.toString()), onTap: () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => HomeScreen(ActionPopUp()),
        ));
      }),
      DataCell(Text(fileInfo.productName), onTap: () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => HomeScreen(ActionPopUp()),
        ));
      }),
      DataCell(Text(fileInfo.customerName), onTap: () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => HomeScreen(ActionPopUp()),
        ));
      }),
      DataCell(Text(fileInfo.contactNum.toString()), onTap: () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => HomeScreen(ActionPopUp()),
        ));
      }),
      DataCell(Text(fileInfo.assignedTo), onTap: () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => HomeScreen(ActionPopUp()),
        ));
      }),
      DataCell(Text(fileInfo.schedDate.toString()), onTap: () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => HomeScreen(ActionPopUp()),
        ));
      }),
      DataCell(Text(fileInfo.status), onTap: () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => HomeScreen(ActionPopUp()),
        ));
      }),
    ],
  );
}

DataColumn recentDataColumn(String phoneName) {
  return DataColumn(
      label: Text(
    phoneName,
    style: TextStyle(fontStyle: FontStyle.italic),
  ));
}
