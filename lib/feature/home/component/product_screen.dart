import 'package:first_flutter_app/shared/ColorExt.dart';
import 'package:first_flutter_app/shared/FontExt.dart';
import 'package:first_flutter_app/shared/IconExt.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  final String image;
  final String title;
  final String price;
  final VoidCallback onTap;

  const ProductScreen({
    Key? key,
    required this.image,
    required this.title,
    required this.price,
    required this.onTap
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: onTap,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: AspectRatio(
                aspectRatio: 0.8,
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        child: Image.asset(
                          image,
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: double.infinity,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 1,
                      child: Container(
                        child: AppIcon.toBag.toIcon(width: 30, height: 30),
                        padding: EdgeInsets.all(10),
                        constraints: BoxConstraints(
                          minWidth: 40,
                          minHeight: 40,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 12),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: AppFont.regular(15, color: AppColor.black3),
                      ),
                      // SizedBox(height: 8),
                      Text('\$ ${price}', style: AppFont.bold(15)),
                    ],
                  ),
                  Spacer(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
