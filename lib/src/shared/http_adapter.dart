import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:kaycore_auth/src/shared/exception.dart';

part 'http_exception.dart';

enum Environment {
  production,
  staging;

  String get authority {
    switch (this) {
      case Environment.production:
        return 'api.kayko.rw';
      case Environment.staging:
        return 'staging.kayko.rw';
    }
  }
}

class HttpAdapter {
  final http.Client _client;
  final Environment environment;

  HttpAdapter({http.Client? client, required this.environment})
      : _client = client ?? http.Client();

  Future<Object> delete({
    required String path,
    Map<String, Object>? body,
    Map<String, String>? headers,
  }) async {
    try {
      final url = Uri.https(environment.authority, path);
      late final http.Response response;
      response = await _client.delete(url, body: body, headers: headers);

      _checkStatusCode(response);

      return _decodeBody(response);
    } catch (error) {
      throw UnhandledException('$error');
    }
  }

  Future<Object> get({
    required String path,
    Map<String, String>? headers,
  }) async {
    try {
      final url = Uri.https(environment.authority, path);
      late final http.Response response;
      response = await _client.get(url, headers: headers);

      _checkStatusCode(response);

      return _decodeBody(response);
    } catch (error) {
      throw UnhandledException('$error');
    }
  }

  Future<Object> patch({
    required String path,
    Map<String, Object>? body,
    Map<String, String>? headers,
  }) async {
    try {
      final url = Uri.https(environment.authority, path);
      late final http.Response response;
      response = await _client.patch(url, body: body, headers: headers);

      _checkStatusCode(response);

      return _decodeBody(response);
    } catch (error) {
      throw UnhandledException('$error');
    }
  }

  Future<Object> post({
    required String path,
    required Map<String, Object> body,
    Map<String, String>? headers,
  }) async {
    try {
      final url = Uri.https(environment.authority, path);
      late final http.Response response;
      response = await _client.post(url, body: body, headers: headers);

      _checkStatusCode(response);

      return _decodeBody(response);
    } catch (error) {
      throw UnhandledException('$error');
    }
  }

  Future<Object> put({
    required String path,
    required Map<String, Object> body,
    Map<String, String>? headers,
  }) async {
    try {
      final url = Uri.https(environment.authority, path);
      late final http.Response response;
      response = await _client.put(url, body: body, headers: headers);

      _checkStatusCode(response);

      return _decodeBody(response);
    } catch (error) {
      throw UnhandledException('$error');
    }
  }

  void _checkStatusCode(http.Response response) {
    switch (response.statusCode) {
      case 400:
        throw HttpFailure(statusCode: 400, message: 'Bad Request');
      case 401:
        throw HttpFailure(statusCode: 401, message: 'Unauthorized');
      case 404:
        throw HttpFailure(statusCode: 404, message: 'Not Found');
      case 500:
        throw HttpFailure(statusCode: 500, message: 'Server Error');
    }
  }

  dynamic _decodeBody(http.Response response) {
    try {
      return json.decode(response.body);
    } catch (error) {
      throw JsonDecodeException('$error');
    }
  }
}
