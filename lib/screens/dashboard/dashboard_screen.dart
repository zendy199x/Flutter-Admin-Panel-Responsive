import 'package:admin_panel_responsive/constants.dart';
import 'package:admin_panel_responsive/screens/dashboard/components/header.dart';
import 'package:admin_panel_responsive/screens/dashboard/components/my_files.dart';
import 'package:admin_panel_responsive/screens/dashboard/components/storage_details.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(defaultPadding),
          child: Column(
            children: [
              const Header(),
              const SizedBox(
                height: defaultPadding,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Expanded(
                    flex: 5,
                    child: MyFiles(),
                  ),
                  SizedBox(width: defaultPadding),
                  Expanded(
                    flex: 2,
                    child: StorageDetails(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
