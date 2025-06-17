import 'package:first_flutter_app/shared/ColorExt.dart';
import 'package:first_flutter_app/shared/FontExt.dart';
import 'package:first_flutter_app/shared/IconExt.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: AppIcon.profile.toIcon(fill: false)),
      body: Center(
        child: Text(
          "김민준은 랄슨즈",
          style: AppFont.bold(30),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
