import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/news_response.dart';
import '../config/api_config.dart';

class NewsService {
  static String get _apiKey => ApiConfig.apiKey;
  static String get _baseUrl => ApiConfig.baseUrl;

  Future<NewsResponse> getTopHeadlines({
    String country = 'us',
    String? category,
  }) async {
    try {
      final queryParams = {
        'country': country,
        'apiKey': _apiKey,
        if (category != null) 'category': category,
      };

      final uri = Uri.parse(
        '$_baseUrl/top-headlines',
      ).replace(queryParameters: queryParams);

      final response = await http.get(uri);

      if (response.statusCode == 200) {
        final jsonData = json.decode(response.body);
        return NewsResponse.fromJson(jsonData);
      } else if (response.statusCode == 401) {
        throw Exception('Invalid API key. Please check your NewsAPI key.');
      } else {
        throw Exception('Failed to load news: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Error fetching news: $e');
    }
  }

  /// Searches for news articles based on a query
  /// [query] - Keywords or phrases to search for
  Future<NewsResponse> searchNews(String query) async {
    if (query.isEmpty) {
      throw Exception('Search query cannot be empty');
    }

    try {
      final queryParams = {
        'q': query,
        'apiKey': _apiKey,
        'sortBy': 'publishedAt',
      };

      final uri = Uri.parse(
        '$_baseUrl/everything',
      ).replace(queryParameters: queryParams);

      final response = await http.get(uri);

      if (response.statusCode == 200) {
        final jsonData = json.decode(response.body);
        return NewsResponse.fromJson(jsonData);
      } else if (response.statusCode == 401) {
        throw Exception('Invalid API key. Please check your NewsAPI key.');
      } else {
        throw Exception('Failed to search news: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Error searching news: $e');
    }
  }
}
