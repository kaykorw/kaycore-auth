// Copyright 2022 Kayko Group. All rights reserved.

library kaycore_auth;

import 'dart:convert';

import 'package:http/http.dart' as http;

import 'src/shared/exceptions.dart';

part 'src/kaycore_auth.dart';

Future<Object> delete({
  required Environment environment,
  required String path,
  Map<String, Object>? body,
  Map<String, String>? headers,
}) async {
  try {
    final http.Client client = http.Client();
    final Uri url = Uri.https(environment.authority, path);
    late final http.Response response;

    response = await client.delete(url, body: body, headers: headers);

    _checkStatusCode(response);

    return _decodeBody(response);
  } catch (error) {
    throw UnhandledException('$error');
  }
}

Future<Object> get({
  required Environment environment,
  required String path,
  Map<String, String>? headers,
}) async {
  try {
    final http.Client client = http.Client();
    final url = Uri.https(environment.authority, path);
    late final http.Response response;
    response = await client.get(url, headers: headers);

    _checkStatusCode(response);

    return _decodeBody(response);
  } catch (error) {
    throw UnhandledException('$error');
  }
}

Future<Object> patch({
  required Environment environment,
  required String path,
  Map<String, Object>? body,
  Map<String, String>? headers,
}) async {
  try {
    final http.Client client = http.Client();
    final url = Uri.https(environment.authority, path);
    late final http.Response response;
    response = await client.patch(url, body: body, headers: headers);

    _checkStatusCode(response);

    return _decodeBody(response);
  } catch (error) {
    throw UnhandledException('$error');
  }
}

Future<Object> post({
  required Environment environment,
  required String path,
  required Map<String, Object> body,
  Map<String, String>? headers,
}) async {
  try {
    final http.Client client = http.Client();
    final url = Uri.https(environment.authority, path);
    late final http.Response response;
    response = await client.post(url, body: body, headers: headers);

    _checkStatusCode(response);

    return _decodeBody(response);
  } catch (error) {
    throw UnhandledException('$error');
  }
}

Future<Object> put({
  required Environment environment,
  required String path,
  required Map<String, Object> body,
  Map<String, String>? headers,
}) async {
  try {
    final http.Client client = http.Client();
    final url = Uri.https(environment.authority, path);
    late final http.Response response;
    response = await client.put(url, body: body, headers: headers);

    _checkStatusCode(response);

    return _decodeBody(response);
  } catch (error) {
    throw UnhandledException('$error');
  }
}

void _checkStatusCode(http.Response response) {
  final data = jsonDecode(response.body);
  final message = data['errors']['message'];

  switch (data['errors']['status']) {
    case 400:
      throw HttpFailure(statusCode: 400, message: message);
    case 401:
      throw HttpFailure(statusCode: 401, message: message);
    case 404:
      throw HttpFailure(statusCode: 404, message: message);
    case 500:
      throw HttpFailure(statusCode: 500, message: message);
  }
}

dynamic _decodeBody(http.Response response) {
  try {
    return json.decode(response.body);
  } catch (error) {
    throw JsonDecodeException('$error');
  }
}

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
