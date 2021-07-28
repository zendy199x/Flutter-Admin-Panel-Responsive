import 'package:admin_panel_responsive/constants.dart';
import 'package:flutter/material.dart';

class MyFileModel {
  final String svgSrc, title, totalStorage;
  final int numOfFiels, percentage;
  final Color color;

  MyFileModel(
      {required this.svgSrc,
      required this.title,
      required this.totalStorage,
      required this.numOfFiels,
      required this.percentage,
      required this.color});
}

final List<MyFileModel> demoMyFiels = [
  MyFileModel(
    title: "Documents",
    numOfFiels: 1328,
    svgSrc: "assets/icons/Documents.svg",
    totalStorage: "1.9GB",
    color: primaryColor,
    percentage: 35,
  ),
  MyFileModel(
    title: "Google Drive",
    numOfFiels: 1328,
    svgSrc: "assets/icons/google_drive.svg",
    totalStorage: "2.9GB",
    color: const Color(0xFFFFA113),
    percentage: 35,
  ),
  MyFileModel(
    title: "One Drive",
    numOfFiels: 1328,
    svgSrc: "assets/icons/one_drive.svg",
    totalStorage: "1GB",
    color: const Color(0xFFA4CDFF),
    percentage: 10,
  ),
  MyFileModel(
    title: "Documents",
    numOfFiels: 5328,
    svgSrc: "assets/icons/drop_box.svg",
    totalStorage: "7.3GB",
    color: const Color(0xFF007EE5),
    percentage: 78,
  ),
];
