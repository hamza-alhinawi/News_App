import 'package:flutter/material.dart'
    hide RefreshIndicator;
import 'package:news_app/Models/article_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:news_app/Views/Web_View.dart';
import 'package:news_app/Widgets/refresh_indicator.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articleModel});
  final ResultModel articleModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 10,
        left: 10,
        bottom: 10,
      ),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return WebViewPage(
                      url: articleModel.link,
                    );
                  },
                ),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10),
              ),
              clipBehavior: Clip.antiAlias,

              height: 200,
              width: double.infinity,
              child: CachedNetworkImage(
                fit: BoxFit.fill,
                imageUrl: '${articleModel.image}',
                placeholder:
                    (context, url) => Center(
                      child: RefreshIndicatorCircl(),
                    ),
                errorWidget:
                    (context, url, error) => Image.asset(
                      'Assets/Image/null.png',
                      fit: BoxFit.fill,
                    ),
              ),
            ),
          ),
          Text(
            textDirection: TextDirection.rtl,
            articleModel.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            textDirection: TextDirection.rtl,
            articleModel.description ?? '',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}
