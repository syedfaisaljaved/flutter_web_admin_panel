import 'package:flutter/material.dart';
import 'package:flutter_web_ui/ui/dashboard/side_panel/fl_chart.dart';
import 'package:flutter_web_ui/ui/dashboard/side_panel/storage_details_info_card.dart';
import 'package:flutter_web_ui/util/color_utils.dart';

class StorageDetails extends StatelessWidget {
  const StorageDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 16),
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "Storage Details",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 16),
          Chart(),
          StorageDetailsInfoCard(
            icon: Icons.insert_drive_file_rounded,
            title: "Documents Files",
            amountOfFiles: "1.3GB",
            numOfFiles: 9893,
          ),
          StorageDetailsInfoCard(
            icon: Icons.perm_media,
            title: "Media Files",
            amountOfFiles: "15.3GB",
            numOfFiles: 4332,
          ),
          StorageDetailsInfoCard(
            icon: Icons.file_copy_rounded,
            title: "Other Files",
            amountOfFiles: "1.3GB",
            numOfFiles: 1232,
          ),
          StorageDetailsInfoCard(
            icon: Icons.info,
            title: "Unknown",
            amountOfFiles: "1.3GB",
            numOfFiles: 320,
          ),
        ],
      ),
    );
  }
}
