import 'package:whiteboard/model/news.dart';
import 'package:whiteboard/services/network.dart';

class Repository {
  NetworkService networkService = new NetworkService();

  Future<List<News>> fetchAllNews() => networkService.getAllNews();
}
