import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/Models/article_model.dart';
import 'package:news_app/Services/News_Services.dart';
import 'package:news_app/Widgets/News_List_View.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({super.key});

  @override
  State<NewsListViewBuilder> createState() =>
      _NewsListViewBuilderState();
}

class _NewsListViewBuilderState
    extends State<NewsListViewBuilder> {
  List<ArticleModel> articles = [];
  bool isLoading = true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getGeneralNews();
    setState(() {});
  }

  Future<void> getGeneralNews() async {
    articles = await NewsServices(Dio()).getNews();
    isLoading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? SliverToBoxAdapter(
          child: SizedBox(
            height: MediaQuery.sizeOf(context).height - 300,
            child: Center(
              child: RefreshProgressIndicator(),
            ),
          ),
        )
        : NewsListView(articles: articles);
  }
}
