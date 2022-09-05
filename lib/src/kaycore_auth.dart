part of kaycore_auth;

class KaycoreAuth {
  final Environment environment;

  KaycoreAuth({required this.environment});

  /// Return
  Future<dynamic> confirmPhoneNumberOtp({
    required String identifier,
    required String otp,
  }) async {
    try {
      return UnimplementedError('confirmPhoneNumberOtp');
    } catch (error) {
      UnhandledException('$error');
    }
  }

  Future<dynamic> createBusiness({
    required String companyName,
    required String category,
    double? revenueAmount,
    String? revenueCurrency,
  }) async {
    try {
      return UnimplementedError('createBusiness');
    } catch (error) {
      UnhandledException('$error');
    }
  }

  Future<dynamic> forgetPassword({required String identifier}) async {
    try {
      final body = <String, Object>{
        'identifier': identifier,
      };

      return post(
        environment: environment,
        path: '/auth/password/forgot',
        body: body,
      );
    } catch (error) {
      UnhandledException('$error');
    }
  }

  Future<dynamic> localSignInWithEmail({
    required String identifier,
    required String password,
  }) async {
    try {
      final body = <String, Object>{
        'identifier': identifier,
        'password': password,
      };

      return post(environment: environment, path: '/auth/login', body: body);
    } catch (error) {
      UnhandledException('$error');
    }
  }

  Future<dynamic> localSignInWithPhoneNumber(
      {required String identifier}) async {
    try {
      final body = <String, Object>{
        'identifier': identifier,
        'password': 'randompassword',
      };

      return post(
        environment: environment,
        path: '/auth/login',
        body: body,
      );
    } catch (error) {
      UnhandledException('$error');
    }
  }

  Future<dynamic> localSignUpWithEmail({
    required String identifier,
    required String password,
    required String firstname,
    required String lastname,
    String? country,
    String? phoneNumber,
  }) async {
    try {
      return UnimplementedError('localSignUpWithEmail');
    } catch (error) {
      UnhandledException('$error');
    }
  }

  Future<dynamic> localSignUpWithPhoneNumber({
    required String identifier,
    required String firstname,
    required String lastname,
    String? country,
    String? phoneNumber,
  }) async {
    try {
      return UnimplementedError('localSignUpWithPhoneNumber');
    } catch (error) {
      UnhandledException('$error');
    }
  }

  Future<dynamic> resetPassword({
    required String identifier,
    required String password,
    required String otp,
  }) async {
    try {
      final body = <String, Object>{
        'identifier': identifier,
        'password': password,
        'token': otp,
      };

      return post(
        environment: environment,
        path: '/auth/password/reset',
        body: body,
      );
    } catch (error) {
      UnhandledException('$error');
    }
  }

  @override
  String toString() => 'KaycoreAuth($environment)';

  Future<dynamic> verifyAccount({
    required String identifier,
    required String otp,
  }) async {
    try {
      return UnimplementedError('verifyAccount');
    } catch (error) {
      UnhandledException('$error');
    }
  }
}
