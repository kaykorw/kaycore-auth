part of kaycore_auth;

class KaycoreAuth {
  final Environment environment;

  KaycoreAuth({required this.environment});

  /// ## Confirm phone number OTP
  /// This method will confirm
  /// if inputed OTP match the server generated OTP.
  /// ```dart
  /// confirmPhoneNumberOtp(
  ///   identifier: 'email@email.ext',
  ///   otp: '123123',
  /// );
  /// ```
  Future<dynamic> confirmPhoneNumberOtp({
    required String identifier,
    required String otp,
  }) async {
    try {
      final body = <String, Object>{
        'identifier': identifier,
        'token': otp,
        'option': 'otp'
      };

      return post(
        environment: environment,
        path: '/v2/auth/confirm',
        body: body,
      );
    } catch (error) {
      UnhandledException('$error');
    }
  }

  /// ## Create a new business
  /// This method will create a new business record
  /// in Kayko and generate a business code for it.
  /// ```dart
  /// createBusiness(
  ///   idempotencyKey: 'c9229d1a-778c-4353-aed2-74dd85879eaa',
  ///   companyName: 'Kayko',
  ///   category: 'ICT',
  ///   revenueAmount: 100.00,
  ///   revenueCurrency: 'RWF',
  /// );
  /// ```
  Future<dynamic> createBusiness({
    required String idempotencyKey,
    required String userId,
    required String companyName,
    required String category,
    double? revenueAmount,
    String? revenueCurrency,
  }) async {
    try {
      final body = <String, Object>{
        'idempotency_key': idempotencyKey,
        'user': userId,
        'name': companyName,
        'category': category,
        'revenue_amount': revenueAmount ?? 0,
        'revenue_currency': revenueCurrency ?? 'RWF',
      };

      return post(
        environment: environment,
        path: '/v2/businesses',
        body: body,
      );
    } catch (error) {
      UnhandledException('$error');
    }
  }

  /// ## Forget password
  /// This method will generate a random token
  /// for the user and send it on their email to allow
  /// them use it when setting up a new password.
  /// ```dart
  /// forgetPassword(
  ///   idempotencyKey: 'c9229d1a-778c-4353-aed2-74dd85879eaa',
  ///   identifier: 'email@email.ext',
  /// );
  /// ```
  Future<dynamic> forgetPassword({
    required String idempotencyKey,
    required String identifier,
  }) async {
    try {
      final body = <String, Object>{
        'idempotency_key': idempotencyKey,
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

  /// ## Sign-in with email
  /// This method will sign in a user using their email address
  /// and return a JWT as well as logged in user details.
  /// ```dart
  /// localSignInWithEmail(
  ///   identifier: 'email@email.ext',
  ///   password: '123123',
  /// );
  /// ```
  Future<dynamic> localSignInWithEmail({
    required String identifier,
    required String password,
  }) async {
    try {
      final body = <String, Object>{
        'identifier': identifier,
        'password': password,
        'mode': 'email',
      };

      return post(
        environment: environment,
        path: '/v2/auth/login',
        body: body,
      );
    } catch (error) {
      UnhandledException('$error');
    }
  }

  /// ## Sign-in with phone number
  /// This method will sign in a user using their phone number
  /// and return a successful message that an OTP was sent
  /// on the user phone number.
  /// ```dart
  /// localSignInWithPhoneNumber(identifier: '2507********');
  /// ```
  Future<dynamic> localSignInWithPhoneNumber(
      {required String identifier}) async {
    try {
      final body = <String, Object>{
        'identifier': identifier,
        'mode': 'phone',
      };

      return post(
        environment: environment,
        path: '/v2/auth/login',
        body: body,
      );
    } catch (error) {
      UnhandledException('$error');
    }
  }

  /// ## Register new account with email
  /// This method will register a new user account using their email address
  /// and return a JWT as well as logged in user details.
  /// ```dart
  /// localSignUpWithEmail(
  ///   idempotencyKey: 'c9229d1a-778c-4353-aed2-74dd85879eaa',
  ///   identifier: 'email@email.ext',
  ///   password: '123123',
  ///   firstname: 'Keza',
  ///   lastname: 'Majyambere',
  ///   country: '250',
  ///   phoneNumber: '2507********',
  /// );
  /// ```
  Future<dynamic> localSignUpWithEmail({
    required String idempotencyKey,
    required String identifier,
    required String password,
    required String firstname,
    required String lastname,
    String? country,
    String? phoneNumber,
  }) async {
    try {
      final body = <String, Object>{
        'idempotency_key': idempotencyKey,
        'identifier': identifier,
        'password': password,
        'firstname': firstname,
        'lastname': lastname,
        'country_code': country ?? '',
        'phone_number': phoneNumber ?? '',
        'mode': 'email',
      };

      return post(
        environment: environment,
        path: '/v2/auth/register',
        body: body,
      );
    } catch (error) {
      UnhandledException('$error');
    }
  }

  /// ## Register new account with phone number
  /// This method will register a new user account using their phone number
  /// and return a successful message that an OTP was sent
  /// on the user phone number.
  /// ```dart
  /// localSignUpWithPhoneNumber(
  ///   idempotencyKey: 'c9229d1a-778c-4353-aed2-74dd85879eaa',
  ///   identifier: '2507********',
  ///   firstname: 'Keza',
  ///   lastname: 'Majyambere',
  ///   country: '250',
  ///   phoneNumber: '2507********',
  /// );
  /// ```
  Future<dynamic> localSignUpWithPhoneNumber({
    required String idempotencyKey,
    required String identifier,
    required String firstname,
    required String lastname,
    String? country,
    String? phoneNumber,
  }) async {
    try {
      final body = <String, Object>{
        'idempotency_key': idempotencyKey,
        'identifier': identifier,
        'firstname': firstname,
        'lastname': lastname,
        'country_code': country ?? '',
        'phone_number': phoneNumber ?? '',
        'mode': 'phone',
      };

      return post(
        environment: environment,
        path: '/v2/auth/register',
        body: body,
      );
    } catch (error) {
      UnhandledException('$error');
    }
  }

  /// ## Reset password
  /// This method will compliment the forgetPassword method and reset
  /// the account password with the new provided password as well as
  /// the received OTP if it matches the one generated from the server.
  /// ```dart
  /// resetPassword(
  ///   idempotencyKey: 'c9229d1a-778c-4353-aed2-74dd85879eaa',
  ///   identifier: 'email@email.ext',
  ///   password: '123123',
  ///   otp: '123123',
  /// );
  /// ```
  Future<dynamic> resetPassword({
    required String idempotencyKey,
    required String identifier,
    required String password,
    required String otp,
  }) async {
    try {
      final body = <String, Object>{
        'idempotency_key': idempotencyKey,
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

  /// An override of the toString() method
  /// to display which environment was selected.
  @override
  String toString() => 'KaycoreAuth($environment)';

  /// ## Verify new account
  /// This method will verify authenticity of the new user account
  /// by taking the identifier and OTP and cross check them with ones
  /// on the server.
  /// ```dart
  /// verifyAccount(
  ///   identifier: 'email@email.ext',
  ///   otp: '123123',
  /// );
  /// ```
  Future<dynamic> verifyAccount({
    required String identifier,
    required String otp,
  }) async {
    try {
      final body = <String, Object>{
        'identifier': identifier,
        'token': otp,
        'option': 'account'
      };

      return post(
        environment: environment,
        path: '/v2/auth/confirm',
        body: body,
      );
    } catch (error) {
      UnhandledException('$error');
    }
  }
}
