import 'package:flutter/material.dart';

class ProductModel {
  final String productImage;
  final String productName;
  final String price;

  const ProductModel({
    required this.productImage,
    required this.productName,
    required this.price,
  });
}