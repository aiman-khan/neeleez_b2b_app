const allParametersForPosts =
    "populate=users_permissions_user&populate=media&populate=post_supports&populate=post_comments&populate=post_comments.users_permissions_user&populate=post_comments.likes.users_permissions_user&populate=post_comments.comment_replies&populate=post_comments.comment_replies.users_permissions_user&populate=report_post&populate=report_post.users_permissions_user&populate=post_favorites&populate=post_favorites.users_permissions_user&sort=id:desc&populate=post_comments.comment_replies.comment_reply_likes&populate=post_comments.comment_replies.comment_reply_likes.users_permissions_user&populate=posts_dislikes&populate=posts_dislikes.users_permissions_user&populate=post_supports.users_permissions_user";

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

  //all posts
  final String allPosts = "$baseUrl/api/posts/?$allParametersForPosts";

  //all posts
  String singlePost(String id) =>
      "$baseUrl/api/posts/$id?$allParametersForPosts";

  //my posts
  String myPosts(String id) =>
      "$baseUrl/api/posts/?filters[users_permissions_user][id][\$eq]=$id&$allParametersForPosts";

  //post
  final String postUrl = "$baseUrl/api/posts";

  //comment likes
  final String commentLikesUrl = "$baseUrl/api/comment-likes";

  //comment replies
  final String commentRepliesUrl = "$baseUrl/api/comment-replies";

  //comment reply likes
  final String commentReplyLikesUrl = "$baseUrl/api/comment-reply-likes";

  //post dislikes
  final String postDislikesUrl = "$baseUrl/api/post-dislikes";

  //post favorites
  final String postFavoritesUrl = "$baseUrl/api/post-favorites";

  //post likes
  final String postLikesUrl = "$baseUrl/api/post-likes";

  //report posts
  final String reportPostUrl = "$baseUrl/api/report-posts";

  //Post comments
  String postCommentsUrl(String postId) =>
      "$baseUrl/api/comments?filters[posts][id][\$eq]=$postId&populate=users_permissions_user&populate=likes.users_permissions_user&populate=comment_replies&populate=comment_replies.users_permissions_user&sort=id:desc&populate=comment_replies.comment_reply_likes&populate=comment_replies.comment_reply_likes.users_permissions_user";

  String singleComment(String commentId) =>
      "$baseUrl/api/comments/$commentId?populate=users_permissions_user&populate=likes.users_permissions_user&populate=comment_replies&populate=comment_replies.users_permissions_user&sort=id:desc&populate=comment_replies.comment_reply_likes&populate=comment_replies.comment_reply_likes.users_permissions_user";

  //user's fav posts
  String usersFavPosts(String uId) =>
      "$baseUrl/api/posts/?filters[post_favorites][users_permissions_user][id]=$uId&$allParametersForPosts";

  String userByEmailUrl(String email) =>
      "$baseUrl/api/users/?filters[email][\$eq]=$email";

  String userByOpenIdUrl(String openId) =>
      "$baseUrl/api/users/?filters[open_id][\$eq]=$openId";

  String get usersUrl => "$baseUrl/api/users";

  String get uploadUrl => "$baseUrl/api/upload";

  //RESET EMAIL SEND
  String sendEmailReset =
      "https://wolfiz.org/ahsan/wp-json/opt-service/v1/getmail";

  //VERIFY EMAIL
  String verifyOTP = "https://wolfiz.org/ahsan/wp-json/opt-service/v1/verify";
}

class MessageException implements Exception {
  final String message;
  MessageException(this.message);
}
