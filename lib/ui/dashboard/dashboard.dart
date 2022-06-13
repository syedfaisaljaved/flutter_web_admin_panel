import 'package:flutter/material.dart';
import 'package:flutter_web_ui/ui/dashboard/header/web_header.dart';
import 'package:flutter_web_ui/ui/dashboard/main_panel/storage_drives.dart';
import 'package:flutter_web_ui/ui/dashboard/main_panel/recent_file.dart';
import 'package:flutter_web_ui/ui/dashboard/side_panel/storage_details.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const WebHeader(),
          const SizedBox(height: 16),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 5,
                child: ListView(
                  shrinkWrap: true,
                  children: const [
                    StorageDataDrives(),
                    SizedBox(height: 16),
                    RecentFiles(),
                  ],
                ),
              ),
              const Expanded(
                flex: 2,
                child: StorageDetails(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}