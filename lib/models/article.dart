import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Article {
  final String author;
  final String title;
  final String description;
  final String urlToImage;
  final String articleUrl;

  Article(
      {required this.author,
      required this.title,
      required this.description,
      required this.urlToImage,
      required this.articleUrl});

  factory Article.fromJson(Map<String,dynamic>jsonData){

    return Article(author: jsonData["author"], title: jsonData["title"], description: jsonData["description"],
        urlToImage: jsonData["urlToImage"], articleUrl: jsonData["url"]);
  }
}
