import 'package:first_flutter_app/feature/profile/component/my_order_screen.dart';
import 'package:first_flutter_app/feature/profile/detail_screen.dart';
import 'package:first_flutter_app/shared/FontExt.dart';
import 'package:first_flutter_app/shared/IconExt.dart';
import 'package:first_flutter_app/shared/Stack/VStack.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);
  final orders = const [
    {"title": "My orders", "subTitle": "Already have 10 orders"},
    {"title": "Shipping Addresses", "subTitle": "03 Addresses"},
    {"title": "Payment Method", "subTitle": "You have 2 cards"},
    {"title": "My reviews", "subTitle": "Reviews for 5 items"},
    {"title": "Setting", "subTitle": "Notification, Password, FAQ, Contact"},
    {"title": "Setting", "subTitle": "Notification, Password, FAQ, Contact"},
    {"title": "Setting", "subTitle": "Notification, Password, FAQ, Contact"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: AppIcon.search.toIcon(width: 20, height: 20),
          onPressed: () {
            print("검색");
          },
        ),
        title: Text("Profile", style: AppFont.regular(20)),
        actions: [
          IconButton(
            onPressed: () {
              print("로그아웃");
            },
            icon: AppIcon.logout.toIcon(width: 20, height: 20),
          ),
        ],
      ),
      body: RefreshIndicator(
        color: Colors.black,
        onRefresh: _onRefresh,
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/Profile.png',
                      width: 80,
                      height: 80,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 12),
                        Text('Bruno Pham', style: AppFont.bold(20)),
                        Text('bruno203@gmail.com', style: AppFont.regular(14)),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24),

              VStack(
                spacing: 10,
                children: orders.map((order) {
                  return MyOrderScreen(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              DetailScreen(title: order['title']!),
                        ),
                      );
                    },
                    title: order['title']!,
                    subTitle: order['subTitle']!,
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Future<void> _onRefresh() async {
  print("새로고침 중...");
  await Future.delayed(Duration(seconds: 1));
  print("새로고침 완료");
}
