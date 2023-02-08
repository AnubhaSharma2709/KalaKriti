class Category {
  final String icon, title;

  Category({required this.icon, required this.title});
}

List<Category> demo_categories = [
  Category(
    icon: 'lib/assets/icons/dress.svg',
    title: "Dress",
  ),
  Category(
    icon: "lib/assets/icons/shirt.svg",
    title: "Shirt",
  ),
  Category(
    icon: "lib/assets/icons/pants.svg",
    title: "Pants",
  ),
  Category(
    icon: "lib/assets/icons/Tshirt.svg",
    title: "Tshirt",
  ),
  Category(
      icon: "lib/assets/icons/pants.svg",
      title: 'AR Try On'),
];
