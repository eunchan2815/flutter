import 'package:first_flutter_app/feature/bell/Model/BellModel.dart';
import 'package:first_flutter_app/shared/ColorExt.dart';
import 'package:first_flutter_app/shared/FontExt.dart';
import 'package:flutter/material.dart';


class ProductBellScreen extends StatefulWidget {
  final BellModel data;
  const ProductBellScreen({
    Key? key,
    required this.data
  }) : super(key: key);

  @override
  _ProductBellScreenState createState() => _ProductBellScreenState();
}

class _ProductBellScreenState extends State<ProductBellScreen> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: GestureDetector(
          onTap: () {
            setState(() {
              isSelected = !isSelected;
            });
          },
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 18, horizontal: 20),
                child: Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                widget.data.productImage,
                                width: 70,
                                height: 70,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(width: 12),

                            Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      widget.data.title,
                                      style: AppFont.bold(12),
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                      widget.data.description,
                                      style: AppFont.regular(10, color: AppColor.black3),
                                    )
                                  ],
                                )
                            ),
                          ],
                        )
                      ],
                    )
                ),
              ),
              Divider(
                height: 1,
                thickness: 0.5,
                color: Colors.grey[300],
                indent: 20,
                endIndent: 20,
              ),
            ],
          ),
        )
    );
  }
}