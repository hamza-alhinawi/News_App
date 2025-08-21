import 'package:flutter/material.dart';
import 'package:news_app/Views/home_view.dart';
import 'package:dio/dio.dart';

void main() {
  runApp(const NewsApp());
  getNews();
}

final dio = Dio();

void getNews() async {
  final response = await dio.get(
    'https://newsdata.io/api/1/latest?apikey=pub_85875f0f0cce8133ba315437bf2884a2aa97a&country=EG&language=ar',
  );
  print(response);
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
