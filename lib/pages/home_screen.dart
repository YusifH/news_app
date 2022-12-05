import 'package:flutter/material.dart';

import '../components/customListtile.dart';
import '../model/article_model.dart';
import '../services/api_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ApiService client = ApiService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Flutter',
              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Text(' News', style: TextStyle(color: Colors.blueAccent)),
          ],
        ),
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu_outlined, color: Colors.black,)),
        actions:  [
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: IconButton(onPressed: (){}, icon: const Icon(Icons.notifications, color: Colors.black54,),)
           )
        ],
      ),
      body: FutureBuilder(
        future: client.getArticle(),
        builder: (BuildContext context, AsyncSnapshot<List<Article>> snapshot) {
          if (snapshot.hasData) {
            List<Article> articles = snapshot.data!;
            return ListView.builder(
              itemCount: articles.length,
              itemBuilder: (context, index) =>
                  customListTile(articles[index], context),
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
