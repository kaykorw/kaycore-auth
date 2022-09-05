abstract class KaycoreAuthError implements Exception {
  final String? message;
  const KaycoreAuthError([this.message]);

  @override
  String toString() => '$message';
}
