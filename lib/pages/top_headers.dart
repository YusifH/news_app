import 'package:flutter/material.dart';
import 'package:news_app/components/customListtile.dart';
import 'package:news_app/components/top_header_card.dart';

import '../model/article_model.dart';
import '../model/category.dart';
import '../services/api_service.dart';

class TopHeaders extends StatefulWidget {
  const TopHeaders({Key? key}) : super(key: key);

  @override
  State<TopHeaders> createState() => _TopHeadersState();
}

class _TopHeadersState extends State<TopHeaders> {
  ApiService client = ApiService();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: client.getArticle(),
      builder: (BuildContext context, AsyncSnapshot<List<Article>> snapshot) {
        if (snapshot.hasData) {
          List<Article> articles = snapshot.data!;
          return SizedBox(
            height: 180,
            // color: Colors.cyan,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) =>
                  topHeaderCard(articles[index], context),
            )
          );
        }
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
