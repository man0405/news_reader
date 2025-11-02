library;

class ApiConfig {
  static const String apiKey = '2724a0c1dece46cb9ad84f8b545e46bc';

  // Base URL for NewsAPI
  static const String baseUrl = 'https://newsapi.org/v2';

  // API Endpoints
  static const String topHeadlinesEndpoint = '/top-headlines';
  static const String everythingEndpoint = '/everything';

  // Validate if API key is set
  static bool get isConfigured =>
      apiKey != 'YOUR_API_KEY_HERE' && apiKey.isNotEmpty;
}
