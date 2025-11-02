import 'article.dart';

class NewsResponse {
  final String status;
  final int totalResults;
  final List<Article> articles;

  NewsResponse({
    required this.status,
    required this.totalResults,
    required this.articles,
  });

  factory NewsResponse.fromJson(Map<String, dynamic> json) {
    return NewsResponse(
      status: json['status'] as String? ?? '',
      totalResults: json['totalResults'] as int? ?? 0,
      articles:
          (json['articles'] as List<dynamic>?)
              ?.map(
                (article) => Article.fromJson(article as Map<String, dynamic>),
              )
              .toList() ??
          [],
    );
  }
}
