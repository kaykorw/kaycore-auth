import 'package:kaycore_auth/kaycore_auth.dart';

Future<void> main() async {
  var auth = KaycoreAuth();

  var confirmPhoneNumberOtp = await auth.confirmPhoneNumberOtp(
    identifier: 'kevin@kayko.rw',
    otp: '123',
  );

  var createBusiness = await auth.createBusiness(
      companyName: 'Kayko',
      category: 'Test',
      revenueAmount: 100.00,
      revenueCurrency: 'RWF');

  var forgetPassword = await auth.forgetPassword(identifier: 'kevin@kayko.rw');

  var localSignInWithEmail = await auth.localSignInWithEmail(
    identifier: 'kevin@kayko.rw',
    password: '123',
  );

  var localSignInWithPhoneNumber =
      await auth.localSignInWithPhoneNumber(identifier: '0781547202');

  var localSignUpWithEmail = await auth.localSignUpWithEmail(
    identifier: 'kevin@kayko.rw',
    password: '123login',
    firstname: 'Kevin',
    lastname: 'Kayisire',
  );

  var localSignUpWithPhoneNumber = await auth.localSignUpWithPhoneNumber(
    identifier: '0781547202',
    firstname: 'Kevin',
    lastname: 'Kayisire',
  );

  var resetPassword = await auth.resetPassword(
      identifier: 'kevin@kayko.rw', password: '123login', otp: '123123');

  var verifyAccount =
      await auth.verifyAccount(identifier: 'kevin@kayko.rw', otp: '123123');

  print(confirmPhoneNumberOtp);
  print(createBusiness);
  print(forgetPassword);
  print(localSignInWithEmail);
  print(localSignInWithPhoneNumber);
  print(localSignUpWithEmail);
  print(localSignUpWithPhoneNumber);
  print(resetPassword);
  print(verifyAccount);
}
