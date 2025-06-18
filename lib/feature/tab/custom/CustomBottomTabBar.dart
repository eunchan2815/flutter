import 'package:first_flutter_app/feature/tab/custom/TabItemWidget.dart';
import 'package:first_flutter_app/shared/ColorExt.dart';
import 'package:first_flutter_app/shared/IconExt.dart';
import 'package:flutter/material.dart';

class CustomBottomTabBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomBottomTabBar({
    Key? key,
    required this.currentIndex,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65, // 탭바 높이 조정
      margin: EdgeInsets.only(
        left: 20,
        right: 20,
        bottom: 30, // 바닥에서 더 띄움
      ),
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            spreadRadius: 2,
            blurRadius: 4,
            offset: Offset(0, 1)
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          TabItemWidget(
            icon: AppIcon.home,
            isSelected: currentIndex == 0,
            onTap: () => onTap(0),
          ),
          TabItemWidget(
            icon: AppIcon.boomMark,
            isSelected: currentIndex == 1,
            onTap: () => onTap(1),
          ),
          TabItemWidget(
            icon: AppIcon.bell,
            isSelected: currentIndex == 2,
            onTap: () => onTap(2),
          ),
          TabItemWidget(
            icon: AppIcon.profile,
            isSelected: currentIndex == 3,
            onTap: () => onTap(3),
          ),
        ],
      ),
    );
  }
}
