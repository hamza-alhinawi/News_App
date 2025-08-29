import 'package:flutter/material.dart';
import 'package:news_app/Models/category_card_models.dart';
import 'package:news_app/Widgets/news_list_view_bulider.dart';

class CategoryCardView extends StatelessWidget {
  const CategoryCardView({
    super.key,
    required this.categroyCardModels,
  });
  final CategoryCardModels categroyCardModels;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        shadowColor: Colors.transparent,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'News',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text: categroyCardModels.appbarName,
                style: TextStyle(
                  color: Color(0xffffd700),
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          NewsListViewBuilder(q: categroyCardModels.q),
        ],
      ),
    );
  }
}
