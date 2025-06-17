import 'package:first_flutter_app/shared/FontExt.dart';
import 'package:first_flutter_app/shared/IconExt.dart';
import 'package:flutter/material.dart';

class MyOrderScreen extends StatelessWidget {
  final String title;
  final String subTitle;
  final VoidCallback? onTap;

  const MyOrderScreen({
    Key? key,
    required this.title,
    required this.subTitle,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              blurRadius: 3,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(title, style: AppFont.bold(18)),
                      SizedBox(height: 8),
                      Text(
                        subTitle,
                        style: AppFont.regular(12).copyWith(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                children: [AppIcon.chevron_Right.toIcon(width: 24, height: 24)],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
