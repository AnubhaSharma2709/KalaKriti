import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kalakriti/registration/utilis/color_theme.dart';
import 'package:kalakriti/registration/utilis/constants.dart';
import 'package:kalakriti/registration/utilis/utilis.dart';
import 'package:kalakriti/store/details/color_dot.dart';
import 'package:kalakriti/store/models/Product.dart';


class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    Size screenSize = utilis().getscreenSize();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        leading: const BackButton(color: colorBorder),
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              color: colorBorder,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              CupertinoIcons.bell_fill,
              color: colorBorder,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              CupertinoIcons.heart_fill,
              color: colorBorder,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              CupertinoIcons.bag_fill,
              color: colorBorder,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Image.asset(
            product.image,
            height: MediaQuery.of(context).size.height * 0.4,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: defaultPadding * 1.5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: SizedBox(
                  width: screenSize.height * 0.15,
                  height: screenSize.height * 0.05,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(defaultBorderRadius)),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text("360 Rotation",
                    style: TextStyle(color: colorBorder),),
                  ),
                ),
              ),
              Center(
                child: SizedBox(
                  width: screenSize.height * 0.15,
                  height: screenSize.height * 0.05,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(defaultBorderRadius)),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text("AR Try On",
                    style: TextStyle(color: colorBorder),),
                  ),
                ),
              ),
              Center(
                child: SizedBox(
                  width: screenSize.height * 0.15,
                  height: screenSize.height * 0.05,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(defaultBorderRadius)),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text("View More",
                    style: TextStyle(color: Colors.red),),
                  ),
                ),
              ),
            ],
          ),

          Expanded(
            child: Container(
              padding: const EdgeInsets.fromLTRB(defaultPadding,
                  defaultPadding * 2, defaultPadding, defaultPadding),
              decoration: const BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(defaultBorderRadius * 3),
                  topRight: Radius.circular(defaultBorderRadius * 3),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          product.title,
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ),
                      const SizedBox(width: defaultPadding),
                      Text(
                        "\$" + product.price.toString(),
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: defaultPadding),
                    child: Text("Lorem Lorem"),
                  ),
                  Text(
                    "Colors",
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                  const SizedBox(height: defaultPadding / 2),
                  Row(
                    children: const [
                      ColorDot(
                        color: Color(0xFFBEE800),
                        isActive: false,
                      ),
                      ColorDot(
                        color: Color(0xFF141B4A),
                        isActive: true,
                      ),
                      ColorDot(
                        color: Color(0xFFF4E5C3),
                        isActive: false,
                      ),
                    ],
                  ),
                  const SizedBox(height: defaultPadding * 2),
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: SizedBox(
              width: screenSize.width,
              height: screenSize.height * 0.05,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    primary: colorBorder,
                    shape: const StadiumBorder()),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(CupertinoIcons.cart,
                    color: backgroundColor,),
                    Text('Add to Cart'),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: SizedBox(
              width: screenSize.width ,
              height: screenSize.height * 0.05,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    primary: colorBorder,
                    shape: const StadiumBorder()),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(CupertinoIcons.heart_fill,
                      color: backgroundColor,),
                    Text('Add to Wishlist'),
                  ],
                ),
              ),
            ),
          ),
                ],
              ),
            ],
              ),
            ),
          )],
      ),
    );
  }
}
