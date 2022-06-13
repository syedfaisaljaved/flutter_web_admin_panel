import 'package:flutter/material.dart';

class FileInfo {
  final IconData icon;
  final String title, totalStorage;
  final int? numOfFiles, percentage;
  final Color color;

  FileInfo({
    required this.icon,
    required this.title,
    required this.totalStorage,
    required this.numOfFiles,
    required this.percentage,
    required this.color,
  });
}
