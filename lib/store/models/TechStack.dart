import 'package:kalakriti/store/components/newTech.dart';

class TechCategory{
  final String icon, title;

  TechCategory({required this.icon, required this.title});
}
List<TechCategory> tech_categories = [
TechCategory(
icon: 'lib/assets/icons/dress.svg',
title: "Try AR",
),
TechCategory(
icon: "lib/assets/icons/shirt.svg",
title: "View Product in 3D",
),
];
