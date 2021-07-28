import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  const Responsive({
    Key? key,
    required this.mobile,
    this.tablet = const Scaffold(),
    required this.desktop,
  }) : super(key: key);

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 850;

  static bool isTable(BuildContext context) =>
      MediaQuery.of(context).size.width >= 850 &&
      MediaQuery.of(context).size.width < 1100;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1100;

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;

    if (_size.width >= 1100) {
      // If our width is more than 1100 then we consider it a desktop
      return desktop;
      // If width it less then 1100 and more then 850 we consider it as tablet
    } else if (_size.width >= 850 && tablet != const Scaffold()) {
      return tablet;
      // Or less then that we called it mobile
    } else {
      return mobile;
    }
  }
}
