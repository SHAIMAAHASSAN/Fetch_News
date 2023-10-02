import 'package:api/service/newsService.dart';
import 'package:api/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'view_models/list_article_view_models.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ArticlesListViewModel>(
      create: (context) => ArticlesListViewModel(),
      child: MaterialApp(
        home: HomeView(),
      ),
    );
  }
}

/*Scaffold(body: Center(
        child:
       GestureDetector(
          onTap: () async{
            NewApi newApi=NewApi();
            var articles = await newApi.fetchArticles();
            for(var article in articles) {
              print('${article.title}: ${article.description}');
            }
          },
          child: Container(
            child: Text("Fetch Data"),
          ),
        ),*/
