import 'package:first_flutter_app/feature/hello/model/TestModel.dart';
import 'package:flutter/material.dart';

class Testcomponent extends StatelessWidget {
  final TestModel viewModel;

  const Testcomponent({Key? key, required this.viewModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text("${viewModel.userId}"),
            SizedBox(width: 10),
            Text("${viewModel.id}"),
            Spacer(),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Align(
            alignment: Alignment.center,
            child: Text(
              viewModel.body,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Text(viewModel.body),
        SizedBox(height: 10),
      ],
    );
  }
}
