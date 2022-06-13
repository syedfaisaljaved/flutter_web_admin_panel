import 'package:flutter/material.dart';
import 'package:flutter_web_ui/model/file_info.dart';
import 'package:flutter_web_ui/util/color_utils.dart';
import 'storage_info_card.dart';

class StorageDataDrives extends StatelessWidget {
  const StorageDataDrives({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Column(
      children: [
        const AddNewButton(),
        const SizedBox(height: 16),
        StorageCardGridView(
          childAspectRatio: _size.width < 1400 ? 1.1 : 1.4,
        ),
      ],
    );
  }
}

class AddNewButton extends StatelessWidget {
  const AddNewButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "My Storage Files",
          style: Theme.of(context).textTheme.subtitle1,
        ),
        ElevatedButton.icon(
          style: TextButton.styleFrom(
            backgroundColor: colorWhite,
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 16,
            ),
          ),
          onPressed: () {},
          icon: const Icon(Icons.add, size: 18, color: accentColor,),
          label: const Text("Add New", style: TextStyle(color: accentColor),),
        ),
      ],
    );
  }
}

class StorageCardGridView extends StatelessWidget {
  const StorageCardGridView({
    Key? key,
    this.crossAxisCount = 4,
    this.childAspectRatio = 1,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {

    List demoMyFiles = [
      FileInfo(
        title: "Documents",
        numOfFiles: 1938,
        icon: Icons.file_copy,
        totalStorage: "1.9GB",
        color: primaryColor,
        percentage: 32,
      ),
      FileInfo(
        title: "Google Drive",
        numOfFiles: 8943,
        icon: Icons.add_to_drive_rounded,
        totalStorage: "2.9GB",
        color: const Color(0xFF137DFF),
        percentage: 77,
      ),
      FileInfo(
        title: "One Drive",
        numOfFiles: 1299,
        icon: Icons.storage,
        totalStorage: "1GB",
        color: const Color(0xFFA4F7FF),
        percentage: 15,
      ),
      FileInfo(
        title: "Documents",
        numOfFiles: 4324,
        icon: Icons.cloud,
        totalStorage: "7.3GB",
        color: const Color(0xFFBBE500),
        percentage: 80,
      ),
    ];

    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: demoMyFiles.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        childAspectRatio: childAspectRatio,
      ),
      itemBuilder: (context, index) => StorageInfoCard(info: demoMyFiles[index]),
    );
  }
}
