import 'package:flutter/material.dart';
import 'package:flutter_web_ui/util/color_utils.dart';

class StorageDetailsInfoCard extends StatelessWidget {
  const StorageDetailsInfoCard({
    Key? key,
    required this.title,
    required this.icon,
    required this.amountOfFiles,
    required this.numOfFiles,
  }) : super(key: key);

  final String title, amountOfFiles;
  final IconData icon;
  final int numOfFiles;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(width: 2, color: primaryColor.withOpacity(0.15)),
        borderRadius: const BorderRadius.all(
          Radius.circular(16),
        ),
      ),
      child: Row(
        children: [
          Icon(icon, size: 24,),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    "$numOfFiles Files",
                    style: Theme.of(context)
                        .textTheme
                        .caption!
                        .copyWith(color: Colors.white70),
                  ),
                ],
              ),
            ),
          ),
          Text(amountOfFiles)
        ],
      ),
    );
  }
}
