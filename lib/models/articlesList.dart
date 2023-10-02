import 'package:api/models/article.dart';

class Articles{
   final List<dynamic>articles;

  Articles({ required this.articles});
  // final String source ;

  factory Articles.fromJson (Map<String,dynamic>jsonData){
    return Articles(articles: jsonData["articles"]);
  }


}