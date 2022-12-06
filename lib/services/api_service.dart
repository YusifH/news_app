import 'dart:convert';

import 'package:http/http.dart';

import '../model/article_model.dart';


class ApiService {
  final endPointUrl =
      "https://newsapi.org/v2/everything?q=apple&from=2022-12-05&to=2022-12-05&sortBy=popularity&apiKey=ebc2dbf97ea8481d8e94089fc685da8a";

  Future<List<Article>> getArticle() async {
    Response res = await get(Uri.parse(endPointUrl));

    if (res.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(res.body);

      List<dynamic> body = json['articles'];
      List<Article> articles =
      body.map((dynamic item) => Article.fromJson(item)).toList();

      return articles;
    } else {
      throw ("Can't get the Articles");
    }
  }
}