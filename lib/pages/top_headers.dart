import 'package:flutter/material.dart';

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
          return ListView.builder(
            itemCount: articles.length,
            itemBuilder: (context, index) {
              return Container(
                width: 200,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(

                    color: Colors.cyan,
                    borderRadius: BorderRadius.circular(15)),
                child: Text(
                  category[index].name,
                  style: const TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              );
            }
                // customListTile(articles[index], context),
          );
        }
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
    return SizedBox(
      height: 150,
      child: ListView.builder(
        padding: const EdgeInsets.all(5),
        scrollDirection: Axis.horizontal,
        itemCount: 7,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                setState(() {});
              },
              child: Container(
                width: 200,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(

                    color: Colors.cyan,
                    borderRadius: BorderRadius.circular(15)),
                child: Text(
                  category[index].name,
                  style: const TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}