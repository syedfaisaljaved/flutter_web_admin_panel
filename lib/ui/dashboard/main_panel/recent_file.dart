import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_ui/model/recent_file.dart';
import 'package:flutter_web_ui/util/color_utils.dart';


class RecentFiles extends StatelessWidget {
  const RecentFiles({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List demoRecentFiles = [
      RecentFileData(
        icon: Icons.insert_drive_file,
        title: "XD File",
        date: "12-06-2022",
        size: "8.5mb",
      ),
      RecentFileData(
        icon: Icons.insert_drive_file,
        title: "Figma File",
        date: "13-06-2022",
        size: "22.1mb",
      ),
      RecentFileData(
        icon: Icons.insert_drive_file,
        title: "Document",
        date: "13-06-2022",
        size: "65.2mb",
      ),
      RecentFileData(
        icon: Icons.audio_file,
        title: "Sound File",
        date: "14-06-2022",
        size: "6.2mb",
      ),
      RecentFileData(
        icon: Icons.perm_media,
        title: "Media File",
        date: "15-06-2022",
        size: "3.1gb",
      ),
      RecentFileData(
        icon: Icons.insert_drive_file,
        title: "Sales PDF",
        date: "16-06-2022",
        size: "5.3mb",
      ),
      RecentFileData(
        icon: Icons.local_post_office,
        title: "Excel File",
        date: "17-06-2022",
        size: "21.3mb",
      ),
    ];

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Recent Files",
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(
            width: double.maxFinite,
            height: 380,
            child: DataTable2(
              columnSpacing: 16,
              minWidth: 600,
              columns: const [
                DataColumn(
                  label: Text("File Name"),
                ),
                DataColumn(
                  label: Text("Date"),
                ),
                DataColumn(
                  label: Text("Size"),
                ),
              ],
              rows: List.generate(
                demoRecentFiles.length,
                (index) => recentFilesRow(demoRecentFiles[index]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

DataRow recentFilesRow(RecentFileData fileInfo) {
  return DataRow(
    cells: [
      DataCell(
        Row(
          children: [
            Icon(
              fileInfo.icon!,
              size: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(fileInfo.title!),
            ),
          ],
        ),
      ),
      DataCell(Text(fileInfo.date!)),
      DataCell(Text(fileInfo.size!)),
    ],
  );
}
