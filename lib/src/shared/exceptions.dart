abstract class ApiError extends KaycoreAuthError {
  const ApiError([super.message]);
}

class HttpFailure extends ApiError {
  final int statusCode;

  HttpFailure({required this.statusCode, String? message}) : super(message);

  @override
  String toString() => 'Status: $statusCode \nError: $message';
}

class JsonDecodeException extends ApiError {
  const JsonDecodeException([super.message]);
}

abstract class KaycoreAuthError implements Exception {
  final String? message;
  const KaycoreAuthError([this.message]);

  @override
  String toString() => '$message';
}

class UnhandledException extends ApiError {
  const UnhandledException([super.message]);
}
