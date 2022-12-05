import 'package:flutter/material.dart';

import '../model/article_model.dart';

class ArticleDetail extends StatelessWidget {
  Article article;

  ArticleDetail({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(article.title.toString()),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(12.0),
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12.0),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 3.0,
                  ),
                ]),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 200.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    //let's add the height

                    image: DecorationImage(
                        image: NetworkImage(article.urlToImage.toString()),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
            // RichText(
            //   text: TextSpan(
            //     children: [
            //       TextSpan(
            //
            //         text: article.content,
            //         style: TextStyle(
            //           fontSize: 16,
            //           // fontFamily: 'HelveticaNeueRegular',
            //           color: Theme.of(context).primaryColor,
            //         ),
            //
            //       ),
            //     ],
            //   ),
            //   maxLines: 14,
            // ),

                // Text(
                //   article.title.toString(),
                //   style: const TextStyle(
                //     fontWeight: FontWeight.bold,
                //     fontSize: 16.0,
                //   ),
                // )
                Text(
                  article.content.toString(),
                  maxLines: 104,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
