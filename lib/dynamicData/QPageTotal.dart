class TotalQ {
  final String date;
  final String productName, customerName;
  final String question, assignedTo, status;

  TotalQ({
    required this.date,
    required this.productName,
    required this.customerName,
    required this.question,
    required this.assignedTo,
    required this.status,
  });
}

List tqueries = [
  TotalQ(
      date: ("2021/06/10 9:48 AM"),
      productName: "Women's Clarks Wave 2.0 Lace N",
      customerName: "Deepak",
      question: "Doing test in stag.",
      assignedTo: "John Abraham(Plumbing)",
      status: "RE_OPEN"),
  TotalQ(
      date: ("2021/06/10 9:48 AM"),
      productName: "Women's Clarks Wave 2.0 Lace N",
      customerName: "Deepak G",
      question:
          "A Very complicated question that has more words for the sake of having more words and testing formating.",
      assignedTo: "John Abraham(Plumbing)",
      status: "RE_OPEN"),
  TotalQ(
      date: ("2021/06/10 9:48 AM"),
      productName: "Women's Clarks Wave 2.0 Lace N",
      customerName: "Deepak",
      question: "Doing test in stag.",
      assignedTo: "John Abraham",
      status: "RE_OPEN"),
  TotalQ(
      date: ("2021/06/10 9:48 AM"),
      productName: "Test Name",
      customerName: "Deepak G",
      question: "Something",
      assignedTo: "Vik",
      status: "OPEN"),
];

List qColNames = [
  'Date',
  'Product Name',
  'Customer Name',
  'Question',
  'Assigned To',
  'Status'
];
