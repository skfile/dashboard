import 'package:flutter/material.dart';

class TileData {
  final int? counter;
  final String? title, tallyName;
  final Icon? icon;
  final Color? colorName;

  TileData({
    this.counter,
    this.title,
    this.tallyName,
    this.icon,
    this.colorName,
  });
}

List tiles = [
  TileData(
      counter: 17,
      title: "Queries",
      tallyName: "Total",
      icon: Icon(IconData(
        57777,
        fontFamily: 'MaterialIcons',
      )),
      colorName: Colors.lightBlue),
  TileData(
      counter: 4,
      title: "Cart",
      tallyName: "Open",
      icon: Icon(IconData(
        57777,
        fontFamily: 'MaterialIcons',
      )),
      colorName: Colors.red),
  TileData(
      counter: 9,
      title: "Questions",
      tallyName: "Total",
      icon: Icon(IconData(
        57777,
        fontFamily: 'MaterialIcons',
      )),
      colorName: Colors.green),
  TileData(
      counter: 0,
      title: "Dash",
      tallyName: "Snoozed",
      icon: Icon(IconData(
        57777,
        fontFamily: 'MaterialIcons',
      )),
      colorName: Colors.yellow),
  TileData(
      counter: 3,
      title: "Cart",
      tallyName: "Re-Open",
      icon: Icon(IconData(
        57777,
        fontFamily: 'MaterialIcons',
      )),
      colorName: Colors.lightBlue),
];
