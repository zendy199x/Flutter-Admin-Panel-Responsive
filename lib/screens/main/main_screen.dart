import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import 'package:admin_panel_responsive/controllers/menu_controller.dart';
import 'package:admin_panel_responsive/responsive.dart';
import 'package:admin_panel_responsive/screens/dashboard/dashboard_screen.dart';
import 'package:admin_panel_responsive/screens/main/components/side_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<MenuController>().scaffoldKey,
      drawer: const SideMenu(),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // We want this side menu only for lange screen
            if (Responsive.isDesktop(context))
              const Expanded(
                // Default flex = 1
                // It takes 1/6 part of the screen
                child: SideMenu(),
              ),
            const Expanded(
              // It takes 5/6 part of the screen
              flex: 5,
              child: DashboardScreen(),
            ),
          ],
        ),
      ),
    );
  }
}
