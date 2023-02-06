import 'package:flutter/material.dart';
class utilis{
  Size getscreenSize() {
    return MediaQueryData.fromWindow(WidgetsBinding.instance!.window).size;
  }
}