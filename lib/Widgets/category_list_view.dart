import 'package:flutter/material.dart';
import 'package:news_app/Models/category_card_models.dart';
import 'package:news_app/Widgets/category_card.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});
  final List<CategoryCardModels> categoriesList = const [
    CategoryCardModels(
      q: '&q=business',
      image: 'Assets/Image/business.jpg',
      appbarName: 'Business',
      text: 'Business',
    ),
    CategoryCardModels(
      q: '&q=entertainment',
      appbarName: 'Entertainment',
      image: 'Assets/Image/entertaiment.avif',
      text: 'Entertainment',
    ),
    CategoryCardModels(
      q: '',
      appbarName: 'General',
      image: 'Assets/Image/general.avif',
      text: 'General',
    ),
    CategoryCardModels(
      q: '&q=Health',
      appbarName: 'Health',
      image: 'Assets/Image/health.avif',
      text: 'Health',
    ),
    CategoryCardModels(
      q: '&q=Science OR التفاعلات الكميائيه OR الذرة OR ابتكار OR الطاقة',
      appbarName: 'Science',
      image: 'Assets/Image/science.avif',
      text: 'Science',
    ),
    CategoryCardModels(
      q: '&q=Sports',
      appbarName: 'Sports',
      image: 'Assets/Image/sports.avif',
      text: 'Sports',
    ),
    CategoryCardModels(
      q: '&q=Technology',
      appbarName: 'Technology',
      image: 'Assets/Image/technology.jpeg',
      text: 'Technology',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: SizedBox(
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
      ),
    );
  }
}
