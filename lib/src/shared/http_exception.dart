part of 'http_adapter.dart';

abstract class ApiError extends KaycoreAuthError {
  const ApiError([super.message]);
}

class HttpFailure extends ApiError {
  final int statusCode;

  HttpFailure({required this.statusCode, String? message}) : super(message);

  @override
  String toString() => 'Http Status: $statusCode \nHttp Error: $message)';
}

class JsonDecodeException extends ApiError {
  const JsonDecodeException([super.message]);
}

class JsonDeserializeException extends ApiError {
  const JsonDeserializeException([super.message]);
}

class UnhandledException extends ApiError {
  const UnhandledException([super.message]);
}
