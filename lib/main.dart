import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/Services/News_Services.dart';
import 'package:news_app/Views/home_view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  NewsServices(Dio()).getNews();
  runApp(const NewsApp());
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
