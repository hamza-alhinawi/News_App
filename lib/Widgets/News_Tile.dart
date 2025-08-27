import 'package:flutter/material.dart';
import 'package:news_app/Models/article_model.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articleModel});
  final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image:
                  (articleModel.image != null &&
                          articleModel.image!.isNotEmpty)
                      ? NetworkImage(articleModel.image!)
                      : AssetImage('Assets/Image/null.png'),
              fit: BoxFit.cover,
            ),
          ),
          height: 200,
          width: double.infinity,
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
    );
  }
}
