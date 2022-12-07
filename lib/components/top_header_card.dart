import 'package:flutter/material.dart';
import 'package:news_app/model/article_model.dart';
import 'package:news_app/pages/article_detail.dart';

Widget topHeaderCard(Article article, BuildContext context) {
  return InkWell(
    onTap: () {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ArticleDetail(article: article)));
    },
    child: Stack(
     children: [
       Container(
         margin: const EdgeInsets.all(20),
         width: 200,
         color: Colors.grey.shade50,
       ),
       Container(
         margin: const EdgeInsets.all(20),
         // height: 50,
         width: 200,
         decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(15),
           image: DecorationImage(
               image: NetworkImage(article.urlToImage.toString()),
               fit: BoxFit.cover),
         ),
       ),

     ],
    )
  );
}
