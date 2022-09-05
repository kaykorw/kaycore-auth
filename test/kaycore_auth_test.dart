import 'dart:async';

import 'package:kaycore_auth/kaycore_auth.dart';
import 'package:test/test.dart';

void main() {
  group('Auth Tests', () {
    final auth = KaycoreAuth(environment: Environment.staging);

    test('Local Sign In With Email', () {
      expect(
          auth.localSignInWithEmail(
              identifier: 'kevin@kayko.rw', password: '123'),
          Future<dynamic>(() => UnimplementedError()));
    });
  });
}
