import 'package:flutter/material.dart';
import 'package:news_app/Models/category_card_models.dart';
import 'package:news_app/Views/Category_Card_View.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.categoryCardModels,
  });
  final CategoryCardModels categoryCardModels;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return CategoryCardView(
                categroyCardModels: categoryCardModels,
              );
            },
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(categoryCardModels.image),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey,
        ),
        height: 120,
        width: 200,
        child: Center(
          child: Text(
            categoryCardModels.text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
