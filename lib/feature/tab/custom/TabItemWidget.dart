import 'package:first_flutter_app/shared/IconExt.dart';
import 'package:flutter/material.dart';

Widget TabItemWidget({
  required AppIcon icon,
  required bool isSelected,
  required VoidCallback onTap,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          icon.toIcon(fill: isSelected)
        ],
      ),
    ),
  );
}
