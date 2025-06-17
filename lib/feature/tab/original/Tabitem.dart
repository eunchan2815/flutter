import 'package:first_flutter_app/shared/IconExt.dart';
import 'package:flutter/material.dart';

BottomNavigationBarItem TabItem({
  required AppIcon icon,
  required bool isSelected,
  String label = '',
}) {
  return BottomNavigationBarItem(
    icon: icon.toIcon(fill: isSelected),
    label: label,
  );
}