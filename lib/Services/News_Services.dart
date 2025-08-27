import 'package:dio/dio.dart';
import 'package:news_app/Models/article_model.dart';

class NewsServices {
  final dio;
  NewsServices(this.dio);
  Future<List<ArticleModel>> getNews() async {
    final Response response = await dio.get(
      'https://newsdata.io/api/1/latest?apikey=pub_85875f0f0cce8133ba315437bf2884a2aa97a&country=EG&language=ar',
    );
    Map<String, dynamic> jsonData = response.data;

    List<dynamic> results = jsonData["results"];

    List<ArticleModel> articlesList = [];
    for (var result in results) {
      ArticleModel articleModel = ArticleModel(
        image: result['image_url'] ,
        title: result['title'],
        description: result['description'],
      );
      articlesList.add(articleModel);
    }
    return articlesList;
  }
}
