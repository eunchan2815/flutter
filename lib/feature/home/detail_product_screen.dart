import 'package:first_flutter_app/shared/FontExt.dart';
import 'package:flutter/material.dart';

class DetailProductScreen extends StatelessWidget {
  final String productName;
  const DetailProductScreen({
    Key? key,
    required this.productName
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const SizedBox.shrink(),
      ),
      body: Center(
        child: Text(
            "${productName}",
          style: AppFont.bold(20),
        )
      )
    );
  }
}
