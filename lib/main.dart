import 'package:flutter/material.dart';
import 'package:kalakriti/registration/screens/sign_in_screen.dart';
import 'package:kalakriti/registration/screens/sign_up_screen.dart';
import 'package:kalakriti/registration/utilis/color_theme.dart';
void main (){
  runApp( const KalaKriti());
}
class KalaKriti extends StatelessWidget {
  const KalaKriti({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:"KalaKriti- Your Online Fashion Store",
      debugShowCheckedModeBanner: false,
      //theme:
      theme:ThemeData.light().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      home: const Scaffold(
        body: null

      ),
    );;
  }
}
