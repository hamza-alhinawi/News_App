import 'package:dio/dio.dart';
import 'package:flutter/material.dart'
    hide RefreshIndicator;
import 'package:news_app/Models/article_model.dart';
import 'package:news_app/Services/News_Services.dart';
import 'package:news_app/Widgets/News_List_View.dart';
import 'package:news_app/Widgets/refresh_indicator.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({super.key});

  @override
  State<NewsListViewBuilder> createState() =>
      _NewsListViewBuilderState();
}

class _NewsListViewBuilderState
    extends State<NewsListViewBuilder> {
  Future<List<ArticleModel>> future = Future.value([]);
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    future = NewsServices(Dio()).getNews();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsListView(articles: snapshot.data!);
        } else if (snapshot.hasError) {
          return Text('nhnhmhmhnhnhnhnhnh');
        } else {
          return SliverToBoxAdapter(
            child: SizedBox(
              height:
                  MediaQuery.sizeOf(context).height - 300,
              child: Center(child: RefreshIndicator()),
            ),
          );
        }
      },
    );
    // return isLoading
    //     ? SliverToBoxAdapter(
    //       child: SizedBox(
    //         height: MediaQuery.sizeOf(context).height - 300,
    //         child: Center(
    //           child: RefreshProgressIndicator(),
    //         ),
    //       ),
    //     )
    //     : articles.isNotEmpty
    //     ? NewsListView(articles: articles)
    //     : Text('nhnhmhmhnhnhnhnhnh');
  }
}
