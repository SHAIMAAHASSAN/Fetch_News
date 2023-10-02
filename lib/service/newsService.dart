import 'dart:convert';
import 'dart:html';

import 'package:api/models/article.dart';
import 'package:api/models/articlesList.dart';
import 'package:http/http.dart' as http;

class NewApi {
  Future<List<Article>> fetchArticles() async {
    try {
      http.Response response = await http.get(Uri.parse(
          "https://newsapi.org/v2/top-headlines?country=us&apiKey=103c0a83109e4f3d99e76450be9fdc56"));

      if (response.statusCode == 200) {
        String data = response.body;
        var jsonData = jsonDecode(data);
        Articles articles = Articles.fromJson(jsonData);

        List<Article> articeList =
            articles.articles.map((e) => Article.fromJson(e)).toList();
        return articeList;
      } else {
        throw Exception("Error Code: ${response.statusCode}");
      }
    } catch (e) {

      throw Exception(e);
    }
  }

  Future<List<Article>> fetchArticlesByCategory(String category) async {
    try {
      http.Response response = await http.get(Uri.parse(
          "https://newsapi.org/v2/top-headlines?country=us&category=science&apiKey=103c0a83109e4f3d99e76450be9fdc56"));

      if (response.statusCode == 200) {
        String data = response.body;
        var jsonData = jsonDecode(data);
        Articles articles = Articles.fromJson(jsonData);

        List<Article> articeList =
            articles.articles.map((e) => Article.fromJson(e)).toList();
        return articeList;
      } else {
        throw Exception("Error Code: ${response.statusCode}");
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}
