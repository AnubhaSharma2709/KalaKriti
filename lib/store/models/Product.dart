import 'package:flutter/material.dart';

class Product {
  final String image, title;
  final int price;
  final Color bgColor;

  Product({
    required this.image,
    required this.title,
    required this.price,
    this.bgColor = const Color(0xFFEFEFF2),
  });
}

List<Product> demo_product = [
  Product(
    image: "lib/assets/images/product_0.png",
    title: "Lorem ",
    price: 000,
    bgColor: const Color(0xFFFEFBF9),
  ),
  Product(
    image: "lib/assets/images/product_1.png",
    title: "Lorem",
    price: 00,
  ),
  Product(
    image: "lib/assets/images/product_2.png",
    title: "Lorem",
    price: 00,
    bgColor: const Color(0xFFF8FEFB),
  ),
  Product(
    image: "lib/assets/images/product_3.png",
    title: "Lorem",
    price: 000,
    bgColor: const Color(0xFFEEEEED),
  ),
];
