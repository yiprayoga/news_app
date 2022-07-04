import 'package:dio/dio.dart';
import 'package:newsapp/models/news_model.dart';

class NewsService {
  Future<NewsModel> getNews() async {
    try {
      var response = await Dio().get(' https://api.indosiana.com/api/articles');
      return NewsModel.fromJson(response.data);
    } on DioError catch (e) {
      print(e);
      return NewsModel.fromJson({});
    }
  }
}
