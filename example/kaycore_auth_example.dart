import 'package:kaycore_auth/kaycore_auth.dart';

Future<void> main() async {
  var auth = KaycoreAuth(environment: Environment.staging);

  print(auth);
}
