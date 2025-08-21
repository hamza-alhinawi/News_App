import 'package:flutter/cupertino.dart';
import 'package:news_app/Widgets/News_Tile.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: 10,
        (context, index) => Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: NewsTile(),
        ),
      ),
    );
  }
}
