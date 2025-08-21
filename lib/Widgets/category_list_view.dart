import 'package:flutter/material.dart';
import 'package:news_app/Models/category_card_models.dart';
import 'package:news_app/Widgets/category_card.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});
  final List<CategoryCardModels> categoriesList = const [
    CategoryCardModels(
      image: 'Assets/Image/business.jpg',
      text: 'Business',
    ),
    CategoryCardModels(
      image: 'Assets/Image/entertaiment.avif',
      text: 'Entertainment',
    ),
    CategoryCardModels(
      image: 'Assets/Image/general.avif',
      text: 'General',
    ),
    CategoryCardModels(
      image: 'Assets/Image/health.avif',
      text: 'Health',
    ),
    CategoryCardModels(
      image: 'Assets/Image/science.avif',
      text: 'Science',
    ),
    CategoryCardModels(
      image: 'Assets/Image/sports.avif',
      text: 'Sports',
    ),
    CategoryCardModels(
      image: 'Assets/Image/technology.jpeg',
      text: 'Technology',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: CategoryCard(
              categoryCardModels: categoriesList[index],
            ),
          );
        },
        itemCount: categoriesList.length,
      ),
    );
  }
}
