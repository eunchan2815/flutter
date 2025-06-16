import 'package:flutter/material.dart';

class Holyscreen extends StatelessWidget {
  const Holyscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("양손"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Image.asset('assets/images/Son.png', width: 430, height: 430,)
      ),
    );
  }
}

