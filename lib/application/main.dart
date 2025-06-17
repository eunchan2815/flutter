import 'package:first_flutter_app/feature/hello/TestScreen.dart';
import 'package:first_flutter_app/feature/hello/viewModel/TestViewModel.dart';
import 'package:first_flutter_app/feature/tab/custom/CustomTabBarScreen.dart';
import 'package:first_flutter_app/feature/tab/original/TabBarExample.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => TestViewModel(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CustomTabBarScreen(),
    );
  }
}
