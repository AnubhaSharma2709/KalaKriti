import 'package:flutter/material.dart';
import 'package:kalakriti/registration/services/auth_service.dart';
import 'package:kalakriti/registration/utilis/utilis.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  //final formKey = GlobalKey<FormState>();
  bool _isLoading = false;
  String email = "";
  String password = "";
  AuthService authService = AuthService();
  @override
  Widget build(BuildContext context) {
    Size screenSize = utilis().getscreenSize();
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 80,
        ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset("lib/assets/logo.png",
                //height: screenSize.height * 0.25,
                //width: screenSize.width * 0.70,
              ),
            ],
          ),
        ),
      );
  }
}
