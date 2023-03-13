class ApiEndPoint {
  ApiEndPoint._();

  // base url

  static const String _baseUrl = "https://b2bdevapi.neeleez.com/api/v1";
  static String get baseUrl => _baseUrl;

  // authenticate
  static String get authenticateUser => "$baseUrl/Account/authenticate";

  // send email verification
  static String get sendEmailVerification =>
      "$baseUrl/EmailVerification/send-verification-email";

  // verify email
  static String get verifyEmail => "$baseUrl/EmailVerification/verify-email";
}
