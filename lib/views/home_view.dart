import 'package:flutter/material.dart';
import 'package:api/view_models/list_article_view_models.dart';
import 'package:provider/provider.dart';

import '../models/article.dart';
import '../service/newsService.dart';

class HomeView extends StatefulWidget {
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
 /* late Future<List<Article>>articles ;
  @override void initState(){
    super.initState();
    fetchAarticles();

  }*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            await Provider.of<ArticlesListViewModel>(context, listen: false)
                .fetchArticles();
            print(Provider.of<ArticlesListViewModel>(context, listen: false)
                .articlesList);
          },
          child: Text("data"),
        ),
      ),
    );
  }

 /* Future<void>fetchAarticles()async {
    var NewsApi = new  NewApi();
    final response = NewsApi.fetchArticles();
    setState(() {
      articles=response;
    });

  }*/
}
