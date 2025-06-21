import 'package:first_flutter_app/feature/bookmark/Component/favorite_product_screen.dart';
import 'package:first_flutter_app/feature/bookmark/Model/ProductModel.dart';
import 'package:first_flutter_app/shared/FontExt.dart';
import 'package:first_flutter_app/shared/IconExt.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookmarkScreen extends StatelessWidget {
  const BookmarkScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<ProductModel> favoriteProducts = [
      ProductModel(productImage: "assets/images/product3.png", productName: "Coffee Chair" , price: "20.00"),
      ProductModel(productImage: "assets/images/product2.png", productName: "Minimal Stand" , price: "25.00"),
      ProductModel(productImage: "assets/images/product4.png", productName: "Minimal Desk" , price: "50.00"),
      ProductModel(productImage: "assets/images/product1.png", productName: "Minimal Lamp" , price: "12.00"),
      ProductModel(productImage: "assets/images/product1.png", productName: "Minimal Lamp" , price: "12.00"),
      ProductModel(productImage: "assets/images/product1.png", productName: "Minimal Lamp" , price: "12.00"),
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
              icon: AppIcon.search.toIcon(width: 20, height: 20),
            ),
            title: Text("Favorites", style: AppFont.bold(18)),
            actions: [
              IconButton(
                onPressed: () {
                  print("card");
                },
                icon: AppIcon.shoppingCart.toIcon(width: 20, height: 20),
              ),
            ],
          ),

          CupertinoSliverRefreshControl(
            onRefresh: () async {
              print("refresh");
            },
          ),

          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (context, index) {
                final product = favoriteProducts[index];
                return FavoriteProductScreen(data: product);
              },
              childCount: favoriteProducts.length,
            ),
          ),
        ],
      ),
    );
  }
}
