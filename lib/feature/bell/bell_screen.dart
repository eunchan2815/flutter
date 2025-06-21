import 'package:first_flutter_app/feature/bell/Component/product_bell_screen.dart';
import 'package:first_flutter_app/feature/bell/Model/BellModel.dart';
import 'package:first_flutter_app/shared/FontExt.dart';
import 'package:first_flutter_app/shared/IconExt.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BellScreen extends StatelessWidget {
  const BellScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<BellModel> data = [
      BellModel(productImage: "assets/images/product2.png", title: "Your order #123456789 has been confirmed", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Turpis pretium et in arcu adipiscing nec. Turpis pretium et in arcu adipiscing nec. "),
      BellModel(productImage: "assets/images/product1.png", title: "Your order #123456789 has been canceled", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Turpis pretium et in arcu adipiscing nec. Turpis pretium et in arcu adipiscing nec. "),
      BellModel(productImage: "assets/images/product3.png", title: "Your order #123456789 has been confirmed", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Turpis pretium et in arcu adipiscing nec. Turpis pretium et in arcu adipiscing nec. "),
      BellModel(productImage: "assets/images/product4.png", title: "Your order #123456789 has been confirmed", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Turpis pretium et in arcu adipiscing nec. Turpis pretium et in arcu adipiscing nec. "),
      BellModel(productImage: "assets/images/product1.png", title: "Your order #123456789 has been confirmed", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Turpis pretium et in arcu adipiscing nec. Turpis pretium et in arcu adipiscing nec. "),
      BellModel(productImage: "assets/images/product1.png", title: "Your order #123456789 has been confirmed", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Turpis pretium et in arcu adipiscing nec. Turpis pretium et in arcu adipiscing nec. "),
      BellModel(productImage: "assets/images/product1.png", title: "Your order #123456789 has been confirmed", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Turpis pretium et in arcu adipiscing nec. Turpis pretium et in arcu adipiscing nec. ")
    ];
    
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            leading: IconButton(
                onPressed: () {
                  print("search");
                },
                icon: AppIcon.search.toIcon(width: 20, height: 20)
            ),
            title: Text(
                "Notification",
              style: AppFont.bold(18),
            ),
          ),

          CupertinoSliverRefreshControl(
            onRefresh: () async {
              print("refresh");
            },
          ),

          SliverList(
              delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    final product = data[index];
                    return ProductBellScreen(
                        data: product
                    );
                  },
                childCount: data.length,
              )
          )
        ],
      ),
    );
  }
}
