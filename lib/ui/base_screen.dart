import 'package:flutter/material.dart';
import 'package:flutter_web_ui/ui/dashboard/dashboard.dart';
import 'package:flutter_web_ui/ui/drawer/left_drawer.dart';

class BaseScreen extends StatelessWidget {
  const BaseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Expanded(
              child: LeftDrawer(),
            ),
            Expanded(
              flex: 5,
              child: DashboardScreen(),
            ),
          ],
        ),
      ),
    );
  }
}
