import 'package:first_flutter_app/feature/home/Detail/counter.dart';
import 'package:first_flutter_app/shared/FontExt.dart';
import 'package:first_flutter_app/shared/IconExt.dart';
import 'package:flutter/material.dart';

class DetailProductScreen extends StatefulWidget {
  final String productName;
  final String productImage;
  final String price;

  const DetailProductScreen({
    Key? key,
    required this.productName,
    required this.productImage,
    required this.price,
  }) : super(key: key);

  @override
  _DetailProductScreenState createState() => _DetailProductScreenState();
}

class _DetailProductScreenState extends State<DetailProductScreen> {
  bool isBookMarked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const SizedBox.shrink(),
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 6,
            child: Center(
              child: Image.asset(
                  widget.productImage,
                  fit: BoxFit.contain,
                  width: double.infinity,
                  height: double.infinity
              ),
            ),
          ),

          Expanded(
            flex: 4,
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.productName, style: AppFont.bold(20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("\$${widget.price}", style: AppFont.bold(26)),
                      Counter(),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.amber),
                      SizedBox(width: 4),
                      Text("4.5 (50 reviews)", style: AppFont.regular(14)),
                    ],
                  ),
                  SizedBox(height: 8),
                  Text(
                    "${widget.productName} is made of natural wood...",
                    style: AppFont.regular(14),
                  ),
                  Spacer(),
                  Row(
                    children: [
                      IconButton(
                        style: IconButton.styleFrom(
                          backgroundColor: Colors.grey.shade200,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: EdgeInsets.all(12),
                        ),
                        onPressed: () {
                          setState(() {
                            isBookMarked = !isBookMarked;
                          });
                        },
                        icon: AppIcon.boomMark.toIcon(fill: isBookMarked),
                      ),
                      SizedBox(width: 8),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 20),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            onPressed: () {
                              print("add to Cart");
                            },
                            child: Padding(
                              padding: EdgeInsets.all(12),
                              child: Text(
                                "Add to cart",
                                style:
                                AppFont.bold(16).copyWith(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
