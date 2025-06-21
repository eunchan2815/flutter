import 'package:first_flutter_app/feature/bookmark/Model/ProductModel.dart';
import 'package:first_flutter_app/feature/home/Detail/counter.dart';
import 'package:first_flutter_app/shared/ColorExt.dart';
import 'package:first_flutter_app/shared/FontExt.dart';
import 'package:first_flutter_app/shared/IconExt.dart';
import 'package:flutter/material.dart';


class FavoriteProductScreen extends StatelessWidget {
  final ProductModel data;
  const FavoriteProductScreen({
    Key? key,
    required this.data
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                data.productImage,
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 12),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(data.productName, style: AppFont.semiBold(14, color: AppColor.black3)),
                  SizedBox(height: 4),
                  Text("\$${data.price}", style: AppFont.bold(18)),
                  SizedBox(height: 4),
                  Counter(),
                ],
              ),
            ),
            IconButton(
              onPressed: () {
                print("remove item");
              },
              icon: AppIcon.xmark.toIcon(width: 20, height: 20),
            ),
          ],
        ),
      ),
    );
  }
}
