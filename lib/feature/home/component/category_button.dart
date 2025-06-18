import 'package:first_flutter_app/shared/ColorExt.dart';
import 'package:first_flutter_app/shared/FontExt.dart';
import 'package:first_flutter_app/shared/IconExt.dart';
import 'package:flutter/material.dart';

class CategoryButton extends StatelessWidget {
  final AppIcon icon;
  final String label;
  final bool isSelected;
  final VoidCallback? onTap;
  const CategoryButton({
    Key? key,
    required this.icon,
    required this.label,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(right: 25),
        child: Column(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: isSelected ? AppColor.blackFont : Color(0xffF5F5F5) ,
                borderRadius: BorderRadius.circular(12),
              ),
              child:
              icon.toIcon(),
            ),
            SizedBox(height: 8),
            Text(label, style: AppFont.regular(14))
          ],
        ),
      ),
    );
  }
}
