import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kalakriti/registration/helper/helper_function.dart';
import 'package:kalakriti/registration/utilis/color_theme.dart';
import 'package:kalakriti/registration/utilis/constants.dart';
import 'package:kalakriti/registration/utilis/utilis.dart';
import 'package:kalakriti/store/components/categories.dart';
import 'package:kalakriti/store/components/TechStack.dart';
import 'package:kalakriti/store/components/new_arrival_products.dart';
import 'package:kalakriti/store/components/popular_products.dart';
import 'package:kalakriti/store/components/search_form.dart';

import '../registration/screens/sign_in_screen.dart';
import '../registration/services/auth_service.dart';

class StoreHomeScreen extends StatefulWidget {
  const StoreHomeScreen({Key? key}) : super(key: key);

  @override
  State<StoreHomeScreen> createState() => _StoreHomeScreenState();
}

class _StoreHomeScreenState extends State<StoreHomeScreen> {
  AuthService authService = AuthService();
  String userName = "";
  String email = "";
  @override
  void initState() {
    super.initState();
    gettingUserData();
  }

  gettingUserData() async {
    await HelperFunctions.getUserEmailFromSF().then((value) {
      setState(() {
        email = value!;
      });
    });
    await HelperFunctions.getUserNameFromSF().then((val) {
      setState(() {
        userName = val!;
      });
    });
  }

  Widget build(BuildContext context) {
    Size screenSize = utilis().getscreenSize();
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: colorBorder,),
        backgroundColor: backgroundColor,
        title: Image.asset('lib/assets/logo.png',
        height: screenSize.height *0.12,
          width: screenSize.width *0.12,
        ),
        actions: [
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
      drawer: Drawer(
        backgroundColor: backgroundColor,
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 50),
          children: <Widget>[
            Icon(
              Icons.account_circle,
              size: 150,
              color: colorBorder,
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              userName,
              textAlign: TextAlign.center,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              email,
              textAlign: TextAlign.center,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 30,
            ),
            const Divider(
              height: 2,
            ),
            ListTile(
              onTap: () async {
                showDialog(
                    barrierDismissible: false,
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text("Logout"),
                        content: const Text("Are you sure you want to logout?"),
                        actions: [
                          IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Text(
                              "No",
                              style: TextStyle(color: Colors.red),
                            ),
                          ),
                          IconButton(
                            onPressed: () async {
                              await authService.signOut();
                              Navigator.of(context).pushAndRemoveUntil(
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const SignInScreen()),
                                  (route) => false);
                            },
                            icon: const Text(
                              "Yes",
                              style: TextStyle(
                                color: Colors.green,
                              ),
                            ),
                          ),
                        ],
                      );
                    });
              },
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              leading: const Icon(Icons.exit_to_app),
              title: const Text(
                "Logout",
                style: TextStyle(color: Colors.black),
              ),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Explore",
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(fontWeight: FontWeight.w500, color: Colors.black),
            ),
            const Text(
              "best Outfits for you",
              style: TextStyle(fontSize: 18),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: defaultPadding),
              child: SearchForm(),
            ),
            const Categories(),
            const TechStack(),
            const NewArrivalProducts(),
            const PopularProducts(),
          ],
        ),
      ),
    );
  }
}
