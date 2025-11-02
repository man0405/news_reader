# 📰 News Reader App

A Flutter application that fetches and displays real-time news from NewsAPI.org, demonstrating REST API integration, async operations, and error handling.

![Flutter](https://img.shields.io/badge/Flutter-3.9.2-blue)
![Dart](https://img.shields.io/badge/Dart-3.0+-blue)
![License](https://img.shields.io/badge/License-Educational-green)
## 🎬 Demo
<video controls width="720" poster="assets/demo-poster.png">
   <source src="assets/demo.mp4" type="video/mp4">
   Your browser does not support the video tag. Download the demo here: [assets/demo.mp4](assets/demo.mp4)
</video>


## 🎯 Project Goal

Work with REST APIs to create a real-time news reader application that fetches news articles, displays them in a beautiful interface, and allows users to view detailed article information.

## ✨ Features

- 📱 Browse top headlines by category (General, Business, Entertainment, Health, Science, Sports, Technology)
- 🔍 Search news articles by keywords
- 📄 View detailed article information with images
- 🔄 Pull-to-refresh for latest news
- ⚠️ Comprehensive error handling
- ⏳ Loading indicators throughout the app
- 🖼️ Graceful image loading with placeholders
- 📅 Formatted dates and timestamps
- 📋 Copy article URLs to clipboard

## 🚀 Quick Start

### Prerequisites

- Flutter SDK (^3.9.2)
- Dart SDK (^3.0)
- A free NewsAPI.org API key

### Step 1: Get Your API Key

1. Visit [NewsAPI.org](https://newsapi.org/)
2. Click "Get API Key" and sign up for a free account
3. Copy your API key from the dashboard

### Step 2: Configure the App

1. Open `lib/config/api_config.dart`
2. Find this line:
   ```dart
   static const String apiKey = 'YOUR_API_KEY_HERE';
   ```
3. Replace `YOUR_API_KEY_HERE` with your actual API key:
   ```dart
   static const String apiKey = 'abc123def456ghi789jkl012mno345pqr';
   ```
4. Save the file

### Step 3: Install Dependencies

```bash
flutter pub get
```

### Step 4: Run the App

```bash
flutter run
```

## 📁 Project Structure

```
lib/
├── main.dart                           # App entry point
├── config/
│   └── api_config.dart                 # API key configuration
├── models/
│   ├── article.dart                    # Article data model
│   └── news_response.dart              # API response model
├── services/
│   └── news_service.dart               # NewsAPI service
└── screens/
    ├── news_list_screen.dart           # Main news list
    └── article_detail_screen.dart      # Article details
```

## 🎓 Technical Requirements Met

| Requirement | Implementation | Status |
|-------------|----------------|--------|
| REST API | NewsAPI.org integration with `http` package | ✅ |
| FutureBuilder | Async data handling throughout the app | ✅ |
| Error Handling | Network errors, API errors, empty states | ✅ |
| Loading Indicators | Progress indicators during data fetching | ✅ |

## 🔧 API Endpoints Used

### Top Headlines
```
GET /v2/top-headlines
Parameters:
  - country: us
  - category: general|business|entertainment|health|science|sports|technology
  - apiKey: YOUR_KEY
```

### Search Everything
```
GET /v2/everything
Parameters:
  - q: search query
  - sortBy: publishedAt
  - apiKey: YOUR_KEY
```

## 📦 Dependencies

```yaml
dependencies:
  flutter:
    sdk: flutter
  http: ^1.2.0      # REST API calls
  intl: ^0.19.0     # Date formatting
```

## 🖼️ Screenshots

The app includes:
- **Main Screen**: News list with search, category filters, and pull-to-refresh
- **Detail Screen**: Full article view with image, content, and source URL



## ⚠️ Important Notes

### NewsAPI Free Tier Limits
- 100 requests per day
- Articles from the last 30 days only
- Development use only (not for production)

### API Key Security
- The current implementation stores the API key in the source code
- For production apps, use environment variables or secure storage
- Never commit API keys to public repositories


## 📝 License

This is an educational project for learning Flutter and REST API integration.

## 🙏 Acknowledgments

- [NewsAPI.org](https://newsapi.org/) for providing the news API
- Flutter team for the excellent framework
- Material Design for UI guidelines

---

**Built with ❤️ using Flutter**

Need help? Check the documentation files or create an issue!
