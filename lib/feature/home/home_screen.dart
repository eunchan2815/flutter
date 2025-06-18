import 'package:first_flutter_app/shared/FontExt.dart';
import 'package:first_flutter_app/shared/IconExt.dart';
import 'package:first_flutter_app/shared/Stack/VStack.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            leading: IconButton(
              icon: AppIcon.search.toIcon(width: 20, height: 20),
              onPressed: () {
                print("검색");
              },
            ),
            title: Column(
              children: [
                Text("Make home", style: AppFont.regular(16, color: Colors.grey)),
                Text("BEAUTIFUL", style: AppFont.bold(18)),
              ],
            ),
            actions: [
              IconButton(
                icon: AppIcon.shoppingCart.toIcon(width: 25, height: 25),
                onPressed: () {
                  print("카트");
                },
              ),
            ],
          ),
          CupertinoSliverRefreshControl(
            onRefresh: () async {
              print("zz");
            },
          ),

          SliverToBoxAdapter(
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: VStack(
                  spacing: 14,
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        color: Colors.blue,
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        color: Colors.blue,
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        color: Colors.blue,
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        color: Colors.blue,
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        color: Colors.blue,
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        color: Colors.blue,
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        color: Colors.blue,
                      ),
                    ],
                )
              )
          ),
        ],
      ),
    );
  }
}
