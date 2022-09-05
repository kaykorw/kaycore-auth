import 'package:kaycore_auth/kaycore_auth.dart';

Future<void> main() async {
  var auth = KaycoreAuth(environment: Environment.staging);

  // var localSignInWithEmail = await auth.localSignInWithEmail(
  //   identifier: 'kevin@kayko.rw',
  //   password: '123!@#Kevin',
  // );
  // print(localSignInWithEmail);

  // var forgetPassword = await auth.forgetPassword(identifier: '250781547202');
  // print(forgetPassword);

  // var resetPassword = await auth.resetPassword(
  //     identifier: 'kevin@kayko.rw', password: '123!@#Kevin', otp: '231599');
  // print(resetPassword);

  // var localSignInWithPhoneNumber =
  //     await auth.localSignInWithPhoneNumber(identifier: '250781547202');
  // print(localSignInWithPhoneNumber);

  //============================================================================

  // var confirmPhoneNumberOtp = await auth.confirmPhoneNumberOtp(
  //   identifier: 'kevin@kayko.rw',
  //   otp: '123',
  // );

  // var createBusiness = await auth.createBusiness(
  //     companyName: 'Kayko',
  //     category: 'Test',
  //     revenueAmount: 100.00,
  //     revenueCurrency: 'RWF');

  // var localSignUpWithEmail = await auth.localSignUpWithEmail(
  //   identifier: 'kevin@kayko.rw',
  //   password: '123login',
  //   firstname: 'Kevin',
  //   lastname: 'Kayisire',
  // );

  // var localSignUpWithPhoneNumber = await auth.localSignUpWithPhoneNumber(
  //   identifier: '0781547202',
  //   firstname: 'Kevin',
  //   lastname: 'Kayisire',
  // );

  // var verifyAccount =
  //     await auth.verifyAccount(identifier: 'kevin@kayko.rw', otp: '123123');

  // print(confirmPhoneNumberOtp);
  // print(createBusiness);
  // print(localSignUpWithEmail);
  // print(localSignUpWithPhoneNumber);
  // print(verifyAccount);
}
