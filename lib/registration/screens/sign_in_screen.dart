import 'package:flutter/material.dart';
import 'package:kalakriti/registration/utilis/color_theme.dart';
import 'package:kalakriti/registration/utilis/utilis.dart';

import '../utilis/constants.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = utilis().getscreenSize();
    return SingleChildScrollView(
        child: Center(
            child: Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 30,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'lib/assets/images/logo.png',
                    height: screenSize.height * 0.25,
                    width: screenSize.width * 0.35,
                  ),
                  Container(
                    height: screenSize.height * 0.5,
                    width: screenSize.height * 0.5,
                    padding: EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: outlineBorder,
                        width: 2.5,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Center(
                          child: Text(
                            loginText,
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      TextFormField(
                        decoration: textInputDecoration.copyWith(
                          labelText: emailText,
                          hintText: hintEmailText,
                          prefixIcon: Icon(Icons.email, color: colorBorder),
                        ),
                      ),
                        TextFormField(
                          decoration: textInputDecoration.copyWith(
                            labelText: passText,
                            hintText: hintPassConText,
                            prefixIcon: Icon(Icons.key, color: colorBorder),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    )));
  }
}
