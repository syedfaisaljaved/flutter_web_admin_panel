import 'package:flutter/material.dart';

class DrawerTileData {
  final String title;
  final IconData icon;
  final VoidCallback onTap;

  const DrawerTileData({required this.title, required this.icon, required this.onTap});
}