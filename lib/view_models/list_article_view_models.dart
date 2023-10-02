import 'package:flutter/cupertino.dart';

import '../models/article.dart';
import '../service/newsService.dart';

class ArticlesListViewModel extends ChangeNotifier {
  List<Article> _articlesList = [];
  List<Article> _articlesListByCategory = [];

  Future<void> fetchArticles() async {
    _articlesList = await NewApi().fetchArticles();
    notifyListeners();
  }

  Future<void> fetchArticlesByCategory(String category) async {
    _articlesListByCategory = await NewApi().fetchArticlesByCategory(category);
    notifyListeners();
  }

  List<Article> get articlesList => _articlesList;
  List<Article> get articlesListByCategory => _articlesListByCategory;
}