class Urls {
  String jwt = '';

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

  // get jobs
  String getJobs(int pageNo, int pageSize, String fromDate, String toDate,
          int categoryId, int jobStatusId, int companyId) =>
      "$baseUrl/Jobs?pageNo=$pageNo&pageSize=$pageSize&keyword=&fromDate=$fromDate&ToDate=$toDate&categoryId=$categoryId&jobStatusId=$jobStatusId&companyId=$companyId";
}

class MessageException implements Exception {
  final String message;
  MessageException(this.message);
}
