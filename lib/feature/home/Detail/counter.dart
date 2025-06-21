import 'dart:ffi';

import 'package:first_flutter_app/shared/FontExt.dart';
import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12),
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 30,
                height: 30,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.grey.shade200),
                    padding: MaterialStateProperty.all(EdgeInsets.zero),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      count += 1;
                    });
                  },
                  child: Text(
                    "+",
                    style: AppFont.semiBold(18),
                  ),
                ),
              ),
              SizedBox(width: 10),
              Text(
                "${count}",
                style: AppFont.semiBold(18),
              ),
              SizedBox(width: 10),
              SizedBox(
                width: 30,
                height: 30,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.grey.shade200),
                    padding: MaterialStateProperty.all(EdgeInsets.zero),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      count -= 1;
                    });
                  },
                  child: Text(
                    "-",
                    style: AppFont.semiBold(18),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}