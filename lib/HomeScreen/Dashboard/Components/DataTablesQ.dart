import 'package:dashboard/HomeScreen/HomeScreen.dart';
import 'package:dashboard/HomeScreen/Dashboard/Components/ActionPopUp.dart';
import 'package:dashboard/dynamicData/PendingQ.dart';
import 'package:flutter/material.dart';

class DataTablesQ extends StatelessWidget {
  const DataTablesQ({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(bottom: 16),
        child: Container(
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
                    "Pending Queries",
                    style: Theme.of(context).textTheme.headline6,
                    textAlign: TextAlign.left,
                    /* style: Theme.of(context).textTheme.headline6!*/
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: DataTable(
                      columns: List.generate(
                        qColNames.length,
                        (index) => recentDataColumn(qColNames[index]),
                      ),
                      rows: List.generate(
                        queries.length,
                        (index) => recentFileDataRow(queries[index], context),
                      ),
                    ),
                  )
                ])));
  }
}

DataRow recentFileDataRow(PendingQ fileInfo, BuildContext context) {
  return DataRow(
    cells: [
      DataCell(Text(fileInfo.date.toString()), onTap: () {
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
      DataCell(Text(fileInfo.question), onTap: () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => HomeScreen(ActionPopUp()),
        ));
      }),
      DataCell(Text(fileInfo.assignedTo), onTap: () {
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

DataColumn recentDataColumn(String qname) {
  return DataColumn(
      label: Text(
    qname,
    style: TextStyle(fontStyle: FontStyle.italic),
  ));
}

//For the ActionPopUp Class, a variable for the ID for each query
//Needs to be passed in the constructor
//When the API Call is made
//Need to pass a specific id for each query in order
//for this to be an effective function and ActionPopUp Widget.
