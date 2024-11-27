import 'package:f2c/Const/List.dart';
import 'package:f2c/Provider/Productprovider.dart';
import 'package:f2c/Screens/AddToCart.dart';
import 'package:f2c/Screens/Wishlist.dart';
import 'package:f2c/Theme/color.dart';
import 'package:f2c/Theme/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class GridViewBuilderWidget extends StatelessWidget {
  const GridViewBuilderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: GridView.builder(
        shrinkWrap: true,
        physics:
            const NeverScrollableScrollPhysics(), // Prevent internal scroll conflict
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Number of columns
          childAspectRatio: 2 / 3, // Aspect ratio of each item
          crossAxisSpacing: 10, // Space between columns
          mainAxisSpacing: 10, // Space between rows
        ),
        itemCount: images2.length, // Number of items
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              color: Colors.white, // Background color
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Column(
              children: [
                Expanded(
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.vertical(top: Radius.circular(15)),
                          image: DecorationImage(
                            image: AssetImage(images2[index]),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 5,
                        right: 5,
                        child: IconButton(
                          onPressed: () {
                            final product = Product(
                              name: ProductName[index],
                              price: ProductPrice[index],
                              grams: Productgrams[index],
                              imagePath: images2[index],
                            );
                            Provider.of<ProductProvider>(context, listen: false)
                                .addToWishlist(product);
                            Get.to(WishlistScreen());
                          },
                          icon: const Icon(Icons.favorite_border),
                          color: wishlisticoncolor,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        ProductName[index],
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        ProductPrice[index],
                        style: const TextStyle(
                          color: productPriceColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        Productgrams[index],
                        style: const TextStyle(
                          color: ProductGramsColor,
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    final product = Product(
                      name: ProductName[index],
                      price: ProductPrice[index],
                      grams: Productgrams[index],
                      imagePath: images2[index],
                    );
                    Provider.of<ProductProvider>(context, listen: false)
                        .addToCart(product);
                    Get.to(CartScreen());
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: productPriceColor,
                    shape: const RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.vertical(bottom: Radius.circular(15)),
                    ),
                  ),
                  child: Text(
                    'ADD',
                    style: Addtocartstyle,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
