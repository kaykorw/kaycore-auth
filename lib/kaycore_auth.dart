// Copyright 2022 Kayko Group. All rights reserved.

library kaycore_auth;

import 'package:kaycore_auth/src/shared/http_adapter.dart';

part 'src/kaycore_auth.dart';

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
