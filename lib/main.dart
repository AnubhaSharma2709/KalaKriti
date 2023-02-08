import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:kalakriti/registration/screens/sign_in_screen.dart';
import 'package:kalakriti/registration/screens/sign_up_screen.dart';
import 'package:kalakriti/registration/utilis/color_theme.dart';
import 'package:kalakriti/store/store_homescreen.dart';

import 'registration/helper/helper_function.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const KalaKriti());
}

class KalaKriti extends StatefulWidget {
  const KalaKriti({Key? key}) : super(key: key);

  @override
  State<KalaKriti> createState() => _KalaKritiState();
}

class _KalaKritiState extends State<KalaKriti> {
  bool _isSignedIn = false;
  @override
  void initState(){
    super.initState();
    getUserLoggedInStatus();
  }
  getUserLoggedInStatus() async{
    await HelperFunctions.getUserLoggedInStatus().then((value){
      if(value!=null){
        setState(() {
          _isSignedIn = value;
        });
      }
    });
  }
  Widget build(BuildContext context) {
    return MaterialApp(
      title:"KalaKriti- Your Online Fashion Store",
      debugShowCheckedModeBanner: false,
      //theme:
      theme:ThemeData.light().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      home: Scaffold(
        body: _isSignedIn? const StoreHomeScreen() : const SignInScreen(),
      ),
    );
  }
}
