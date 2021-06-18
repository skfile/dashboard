class PendingPhone {
  final String recievedDate, schedDate;
  final String productName, customerName;
  final int contactNum;
  final String assignedTo, status;

  PendingPhone(
      {required this.recievedDate,
      required this.productName,
      required this.customerName,
      required this.contactNum,
      required this.assignedTo,
      required this.schedDate,
      required this.status});
}

List phones = [
  PendingPhone(
      recievedDate: "2021/06/08 3:26 PM",
      productName: "Women's Clarks Wave 2.0 Lace Navy Combination",
      customerName: "Deepak",
      contactNum: 1234567890,
      assignedTo: "Vik",
      schedDate: ("1969-07-20 20:18:04Z"),
      status: "Null"),
  PendingPhone(
      recievedDate: ("2021/06/08 3:26 PM"),
      productName: "Women's Clarks Wave 2.0 Lace Navy Combination",
      customerName: "Deepak",
      contactNum: 1234567890,
      assignedTo: "Vik",
      schedDate: ("1969-07-20 20:18:04Z"),
      status: "Null")
];

List phoneNames = [
  'Recieved Date',
  'Product Name',
  'Customer Name',
  'Contact Num',
  'Assigned To',
  'Scheduled Date',
  'Status'
];
