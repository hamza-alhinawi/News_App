import 'package:flutter/material.dart';
import 'package:news_app/Widgets/News_List_View.dart';
import 'package:news_app/Widgets/category_list_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                text: 'Cloud',
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
      body: Padding(
        padding: const EdgeInsets.only(
          left: 10,
          right: 10,
          top: 10
        ),
        child: CustomScrollView(
          slivers: [
            
            SliverToBoxAdapter(child: CategoryListView()),
            SliverToBoxAdapter(child: SizedBox(height: 30)),
            NewsListView(),
          ],
        ),
      ),
    );
  }
}
