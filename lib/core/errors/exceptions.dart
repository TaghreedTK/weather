class CustomException implements Exception {
  final String message;

  CustomException({required this.message});

  @override
  String toString() {
    return message;
  }
}

class ServerException implements Exception {}

class CacheException implements Exception {}
