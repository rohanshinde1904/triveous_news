import 'dart:convert';

import 'package:triveousnews/model/article_model.dart';
import 'package:http/http.dart' as http;

class News {
  List<Article_model> news = [];

  Future<void> getNews() async {
    String url =
        "http://newsapi.org/v2/top-headlines?country=in&apiKey=5a0526f59dc34c669040eaa3f499acc6";

    var response = await http.get(url);
    var jsondata = jsonDecode(response.body);

    if (jsondata['status'] == "ok") {
      jsondata["articles"].forEach((elements) {
        if (elements["urlToImage"] != null && elements["description"] != null) {
          Article_model article_model = Article_model(
              title: elements["title"],
              author: elements["author"],
              description: elements["description"],
              url: elements["url"],
              urlToimage: elements["urlToImage"],
              content: elements["content"]);

          news.add(article_model);
        }
      });
    }
  }
}

class CategoryNews {
  List<Article_model> news = [];

  Future<void> getNews(String category) async {
    String url =
        "http://newsapi.org/v2/top-headlines?category=$category&country=in&apiKey=5a0526f59dc34c669040eaa3f499acc6";

    var response = await http.get(url);
    var jsondata = jsonDecode(response.body);

    if (jsondata['status'] == "ok") {
      jsondata["articles"].forEach((elements) {
        if (elements["urlToImage"] != null && elements["description"] != null) {
          Article_model article_model = Article_model(
              title: elements["title"],
              author: elements["author"],
              description: elements["description"],
              url: elements["url"],
              urlToimage: elements["urlToImage"],
              // publishedAt: elements["publishedAt"],
              content: elements["content"]);

          news.add(article_model);
        }
      });
    }
  }
}
