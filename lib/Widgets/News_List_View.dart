import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/Models/article_model.dart';
import 'package:news_app/Widgets/News_Tile.dart';

class NewsListView extends StatefulWidget {
  final List<ResultModel> articles;

  const NewsListView({super.key, required this.articles});

  @override
  State<NewsListView> createState() => _NewsListViewState();
}

class _NewsListViewState extends State<NewsListView> {
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: widget.articles.length,
        (context, index) => Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: NewsTile(
            articleModel: widget.articles[index],
          ),
        ),
      ),
    );
  }
}
