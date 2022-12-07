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
         // height: 50,
         width: 200,
         decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(15),
           image: DecorationImage(
               image: NetworkImage(article.urlToImage.toString()),
               fit: BoxFit.cover),
         ),
         child: Container(
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(15),
             color: Colors.white10
           ),
           child: Align(
               alignment: Alignment.bottomCenter,
               child:  Text(
                 textAlign: TextAlign.center,
                 article.title.toString(),
                 style: const TextStyle(
                     fontWeight: FontWeight.bold,
                     fontSize: 14.0,
                     color: Colors.white
                 ),
               )
           ),
         )
       ),
     ],
    )
  );
}
