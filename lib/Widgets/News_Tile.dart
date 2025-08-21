import 'package:flutter/material.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage('Assets/Image/null.png'),
              fit: BoxFit.cover,
            ),
          ),
          height: 200,
          width: double.infinity,
        ),
        Text(
          'sdlfdjsdljflsjflsjfيسسيسسسيسسييسسسسسسسسسسيسيسيسيسيسيسssdsdsdsdsdsdsddsdssdsdsdcscxxsdffxsszxcvbfdddjfkdjfjdd',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          'sdlfdjsdljflsjflsjfيسسيسسسيسسييسسسسسسسسسسيسيdsdcsxxsdffvdسيسيسيسيسssdsdsdsdsdsdsddsdssdsdsdcscxxsdffxsszxcvbfdddjfkdjfjdd',
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
