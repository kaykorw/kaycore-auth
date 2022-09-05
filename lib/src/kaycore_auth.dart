part of kaycore_auth;

class KaycoreAuth {
  const KaycoreAuth();

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
      return UnimplementedError('forgetPassword');
    } catch (error) {
      UnhandledException('$error');
    }
  }

  Future<dynamic> localSignInWithEmail({
    required String identifier,
    required String password,
  }) async {
    try {
      return UnimplementedError('localSignInWithEmail');
    } catch (error) {
      UnhandledException('$error');
    }
  }

  Future<dynamic> localSignInWithPhoneNumber(
      {required String identifier}) async {
    try {
      return UnimplementedError('localSignInWithPhoneNumber');
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
      return UnimplementedError('resetPassword');
    } catch (error) {
      UnhandledException('$error');
    }
  }

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