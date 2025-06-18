import 'package:first_flutter_app/shared/FontExt.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String title;
  const DetailScreen({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(title)
      ),
      body: Center(
        child: Text(
          "$title 화면입니다",
          style: AppFont.bold(20),
        ),
      )
    );
  }
}
