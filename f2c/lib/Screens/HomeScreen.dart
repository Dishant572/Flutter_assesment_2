//import 'package:app_bar_with_search_switch/app_bar_with_search_switch.dart';
import 'package:f2c/Const/List.dart';
import 'package:f2c/Provider/ProductSearchDelegate.dart';
import 'package:f2c/Theme/strings.dart';
import 'package:f2c/Theme/style.dart';
import 'package:f2c/widgets/Gridview.dart';
import 'package:f2c/widgets/login/bgScreen.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          Appname,
          style: regularBlack10,
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              showSearch(
                context: context,
                delegate: ProductSearchDelegate(
                  ProductName, // Product names
                  images2, // Product images
                  ProductPrice, // Product prices
                  Productgrams, // Product grams
                ),
              );
            },
          ),
        ],
      ),
      body: BackScreen(
        child: SingleChildScrollView(
          child: Column(
            children: [
              10.heightBox,
              ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(24)),
                child: VxSwiper.builder(
                  autoPlay: true,
                  autoPlayAnimationDuration: const Duration(seconds: 3),
                  aspectRatio: 2.5,
                  realPage: images1.length,
                  itemCount: images1.length,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 300,
                      height: 250,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(24)),
                        image: DecorationImage(
                          image: AssetImage(images1[index]),
                          fit: BoxFit.fill,
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 10), // Add some space
              Container(
                child: GridViewBuilderWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
