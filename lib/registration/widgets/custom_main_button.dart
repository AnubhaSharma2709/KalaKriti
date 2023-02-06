import 'package:flutter/material.dart';
import 'package:kalakriti/registration/utilis/utilis.dart';

class MainButton extends StatelessWidget {
  final Widget child;
  final Color color;
  final bool isLoading;
  final VoidCallback onPressed;

  const MainButton({
    Key? key,
    required this.child,
    required this.color,
    required this.isLoading,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = utilis().getscreenSize();
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: color,
        fixedSize: Size(screenSize.width * 0.6, screenSize.height * 0.05),
      ),
      onPressed: onPressed,
      child: !isLoading
          ? child
          : const Padding(
        padding: EdgeInsets.all(10.0),
        child: AspectRatio(
          aspectRatio: 1 / 1,
          child: CircularProgressIndicator(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}