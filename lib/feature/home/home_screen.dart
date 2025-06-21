import 'package:first_flutter_app/feature/home/Detail/detail_product_screen.dart';
import 'package:first_flutter_app/feature/home/Model/CategoryModel.dart';
import 'package:first_flutter_app/feature/home/component/category_button.dart';
import 'package:first_flutter_app/feature/home/component/product_screen.dart';
import 'package:first_flutter_app/feature/profile/detail_screen.dart';
import 'package:first_flutter_app/shared/FontExt.dart';
import 'package:first_flutter_app/shared/IconExt.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedCategoryIndex = 0;

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> products = [
      {
        'image': 'assets/images/product1.png',
        'title': 'Black Simple Lamp',
        'price': '12.00',
      },
      {
        'image': 'assets/images/product2.png',
        'title': 'Minimal Stand',
        'price': '25.00',
      },
      {
        'image': 'assets/images/product3.png',
        'title': 'Coffee Chair',
        'price': '20.00',
      },
      {
        'image': 'assets/images/product4.png',
        'title': 'Simple Desk',
        'price': '50.00',
      },
    ];

    final List<Category> categories = [
      Category(icon: AppIcon.star, label: "Popular"),
      Category(icon: AppIcon.chair, label: "Chair"),
      Category(icon: AppIcon.table, label: "Table"),
      Category(icon: AppIcon.sofa, label: "Armchair"),
      Category(icon: AppIcon.bed, label: "Bed"),
      Category(icon: AppIcon.lamp, label: "Lamp"),
    ];

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
                Text(
                  "Make home",
                  style: AppFont.regular(16, color: Colors.grey),
                ),
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
            child: Container(
              height: 100,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                padding: EdgeInsets.symmetric(horizontal: 5),
                itemBuilder: (context, index) {
                  final category = categories[index];

                  return CategoryButton(
                    icon: category.icon,
                    label: category.label,
                    isSelected: selectedCategoryIndex == index,
                    onTap: () {
                      setState(() {
                        selectedCategoryIndex = index;
                      });
                    },
                  );
                },
              ),
            ),
          ),

          SliverPadding(
            padding: EdgeInsets.all(20),
            sliver: SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.63,
                crossAxisSpacing: 30,
                mainAxisSpacing: 20,
              ),
              delegate: SliverChildBuilderDelegate((context, index) {
                final product = products[index];
                return ProductScreen(
                  image: product['image']!,
                  title: product['title']!,
                  price: product['price']!,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                            DetailProductScreen(
                                productName: product['title']!,
                                productImage: product['image']!,
                                price: product['price']!
                            ),
                        )
                    );
                  },
                );
              }, childCount: products.length),
            ),
          ),
        ],
      ),
    );
  }
}
