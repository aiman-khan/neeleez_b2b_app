import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:neeleez_b2b/app/models/jobs.dart';

import 'endpoints.dart';

class FeedServices with Urls {
  Future<List<Jobs>> getAllJobs(int pageNo, int pageSize, String fromDate,
      String toDate, int categoryId, int jobStatusId, int companyId) async {
    try {
      final response = await http.get(
          Uri.parse(
            getJobs(pageNo, pageSize, fromDate, toDate, categoryId, jobStatusId,
                companyId),
          ),
          headers: {
            'Authorization':
                'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJJZCI6IjIiLCJDb21wYW55SWQiOiIxIiwiQ29tcGFueUxvY2F0aW9uSWQiOiIxIiwiUm9sZUlkIjoiMSIsImh0dHA6Ly9zY2hlbWFzLm1pY3Jvc29mdC5jb20vd3MvMjAwOC8wNi9pZGVudGl0eS9jbGFpbXMvcm9sZSI6IkFkbWluIiwiaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvd3MvMjAwNS8wNS9pZGVudGl0eS9jbGFpbXMvbmFtZSI6InJhaGVlbCIsImh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3dzLzIwMDUvMDUvaWRlbnRpdHkvY2xhaW1zL2VtYWlsYWRkcmVzcyI6InJhaGVlbEB5bWFpbC5jb20iLCJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1laWRlbnRpZmllciI6IjIiLCJodHRwOi8vc2NoZW1hcy5taWNyb3NvZnQuY29tL3dzLzIwMDgvMDYvaWRlbnRpdHkvY2xhaW1zL2V4cGlyYXRpb24iOiJBcHIgTW9uIDE3IDIwMjMgMTU6NDk6MDggUE0iLCJuYmYiOjE2NzkxNTQ1NDgsImV4cCI6MTY3OTIyNjU0OCwiaXNzIjoiaHR0cHM6Ly9sb2NhbGhvc3Q6NzAzNiIsImF1ZCI6Imh0dHBzOi8vbG9jYWxob3N0OjcwMzYifQ.BA-BAuK9qtrRAycnSjDFhD9sQd2tHgqAITX_P6XaYxo'
          });
      log(response.body);
      final jsonResponse = json.decode(response.body);

      // if (response.statusCode == 200) {
      //   return List<Map<String, dynamic>>.from(jsonResponse["records"])
      //       .map((e) => Jobs.fromJson(e))
      //       .toList();
      // }
      if (response.statusCode == 200) {
        final records = jsonResponse["records"];
        if (records is List) {
          return records.map((e) => Jobs.fromJson(e)).toList();
        }
        throw MessageException('Invalid response format');
      } else {
        throw MessageException(jsonResponse['message']);
      }
    } on SocketException catch (e, stacktrace) {
      if (kDebugMode) {
        print(e);
        print(stacktrace);
      }
      throw MessageException('No internet connection');
    } on MessageException catch (e, stacktrace) {
      if (kDebugMode) {
        print(e);
        print(stacktrace);
      }
      rethrow;
    } catch (e, stacktrace) {
      if (kDebugMode) {
        print(e);
        print(stacktrace);
      }
      throw MessageException('Something went wrong');
    }
  }

  // //Create Post
  // Future<int> createPost({
  //   required String title,
  //   required String location,
  //   required List<File> images,
  //   required String userId,
  //   required double latitude,
  //   required double longitude,
  //   required String tag,
  //   required String personName,
  //   required String personPhone,
  //   required String link,
  // }) async {
  //   try {
  //     final multiPartRequest = http.MultipartRequest('POST', Uri.parse(postUrl));
  //     List<http.MultipartFile> multipartFiles = [for (final img in images) await http.MultipartFile.fromPath('files.media', img.path)];

  //     final data = <String, String>{
  //       "data": json.encode({
  //         'post_title': title,
  //         'location': location,
  //         'lat': latitude,
  //         'lng': longitude,
  //         'users_permissions_user': userId,
  //         'tag': tag,
  //         'personName': personName,
  //         'personContact': personPhone,
  //         'link': link,
  //       }),
  //     };

  //     multiPartRequest.fields.addAll(data);
  //     multiPartRequest.files.addAll(multipartFiles);
  //     final response = await multiPartRequest.send();
  //     final stringResponse = await response.stream.bytesToString();

  //     final jsonResponse = json.decode(stringResponse);
  //     if (response.statusCode == 200) {
  //       final id = json.decode(stringResponse)["data"]["id"];
  //       HNotificationModel(
  //         title: "Post uploaded",
  //         body: "Successfully uploaded your post",
  //       ).fire();
  //       return id;
  //     } else {
  //       throw MessageException(jsonResponse['error']['message']);
  //     }
  //   } on SocketException catch (e) {
  //     if (kDebugMode) {
  //       print(e);
  //     }
  //     throw MessageException('No internet connection');
  //   } on MessageException catch (e, str) {
  //     if (kDebugMode) {
  //       print(e);
  //       print(str);
  //     }
  //     rethrow;
  //   } catch (e) {
  //     if (kDebugMode) {
  //       print(e);
  //     }
  //     throw MessageException('Something went wrong');
  //   }
  // }

  // Future<List<Post>> getMyAllPosts(int id) async {
  //   try {
  //     final response = await http.get(Uri.parse(myPosts("$id")));
  //     log(response.body);
  //     final jsonResponse = json.decode(response.body);

  //     if (response.statusCode == 200) {
  //       return List<Map<String, dynamic>>.from(jsonResponse["data"]).map((e) => Post.fromJson(e)).toList();
  //     } else {
  //       throw MessageException(jsonResponse['error']['message']);
  //     }
  //   } on SocketException catch (e, stacktrace) {
  //     if (kDebugMode) {
  //       print(e);
  //       print(stacktrace);
  //     }
  //     throw MessageException('No internet connection');
  //   } on MessageException catch (e, stacktrace) {
  //     if (kDebugMode) {
  //       print(e);
  //       print(stacktrace);
  //     }
  //     rethrow;
  //   } catch (e, stacktrace) {
  //     if (kDebugMode) {
  //       print(e);
  //       print(stacktrace);
  //     }
  //     throw MessageException('Something went wrong');
  //   }
  // }

  // //Get Single Post
  // Future<Post> getSinglePost(String id) async {
  //   try {
  //     final response = await http.get(Uri.parse(singlePost(id)));
  //     log("Single Post: ${response.body}");
  //     final jsonResponse = json.decode(response.body);

  //     if (response.statusCode == 200) {
  //       return Post.fromJson(jsonResponse["data"]);
  //     } else {
  //       throw MessageException(jsonResponse['error']['message']);
  //     }
  //   } on SocketException catch (e) {
  //     if (kDebugMode) {
  //       print(e);
  //     }
  //     throw MessageException('No internet connection');
  //   } on MessageException catch (e, str) {
  //     if (kDebugMode) {
  //       print(e);
  //       print(str);
  //     }
  //     rethrow;
  //   } catch (e) {
  //     if (kDebugMode) {
  //       print(e);
  //     }
  //     throw MessageException('Something went wrong');
  //   }
  // }

  // Future<int> supportPost(String userId, String postId) async {
  //   try {
  //     final data = json.encode(
  //       <String, dynamic>{
  //         'data': {
  //           "post": postId,
  //           "users_permissions_user": userId,
  //         },
  //       },
  //     );

  //     final response = await http.post(
  //       Uri.parse(postLikesUrl),
  //       body: data,
  //       headers: {
  //         'Content-Type': 'application/json',
  //         'Accept': 'application/json',
  //       },
  //     );

  //     log(response.body);
  //     final jsonResponse = json.decode(response.body);
  //     return jsonResponse["data"]['id'];
  //   } on SocketException catch (e) {
  //     if (kDebugMode) {
  //       print(e);
  //     }
  //     throw MessageException('No internet connection');
  //   } on MessageException catch (e, str) {
  //     if (kDebugMode) {
  //       print(e);
  //       print(str);
  //     }
  //     rethrow;
  //   } catch (e) {
  //     if (kDebugMode) {
  //       print(e);
  //     }
  //     throw MessageException('Something went wrong');
  //   }
  // }

  // Future<void> supportRemovePost(int id) async {
  //   try {
  //     final response = await http.delete(
  //       Uri.parse("$postLikesUrl/$id"),
  //     );

  //     log(response.body);
  //   } on SocketException catch (e) {
  //     if (kDebugMode) {
  //       print(e);
  //     }
  //     throw MessageException('No internet connection');
  //   } on MessageException catch (e, str) {
  //     if (kDebugMode) {
  //       print(e);
  //       print(str);
  //     }
  //     rethrow;
  //   } catch (e) {
  //     if (kDebugMode) {
  //       print(e);
  //     }
  //     throw MessageException('Something went wrong');
  //   }
  // }

  // Future<int> dislikePost(String userId, String postId) async {
  //   try {
  //     final data = json.encode(
  //       <String, dynamic>{
  //         'data': {
  //           "post": postId,
  //           "users_permissions_user": userId,
  //         },
  //       },
  //     );

  //     final response = await http.post(
  //       Uri.parse(postDislikesUrl),
  //       body: data,
  //       headers: {
  //         'Content-Type': 'application/json',
  //         'Accept': 'application/json',
  //       },
  //     );

  //     log(response.body);
  //     final jsonResponse = json.decode(response.body);
  //     return jsonResponse["data"]['id'];
  //   } on SocketException catch (e) {
  //     if (kDebugMode) {
  //       print(e);
  //     }
  //     throw MessageException('No internet connection');
  //   } on MessageException catch (e, str) {
  //     if (kDebugMode) {
  //       print(e);
  //       print(str);
  //     }
  //     rethrow;
  //   } catch (e) {
  //     if (kDebugMode) {
  //       print(e);
  //     }
  //     throw MessageException('Something went wrong');
  //   }
  // }

  // Future<void> dislikeRemovePost(int id) async {
  //   try {
  //     final response = await http.delete(
  //       Uri.parse("$postDislikesUrl/$id"),
  //     );

  //     log(response.body);
  //   } on SocketException catch (e) {
  //     if (kDebugMode) {
  //       print(e);
  //     }
  //     throw MessageException('No internet connection');
  //   } on MessageException catch (e, str) {
  //     if (kDebugMode) {
  //       print(e);
  //       print(str);
  //     }
  //     rethrow;
  //   } catch (e) {
  //     if (kDebugMode) {
  //       print(e);
  //     }
  //     throw MessageException('Something went wrong');
  //   }
  // }

  // Future<int> favPost(String userId, String postId) async {
  //   try {
  //     final data = json.encode(
  //       <String, dynamic>{
  //         'data': {
  //           "post": postId,
  //           "users_permissions_user": userId,
  //         },
  //       },
  //     );

  //     final response = await http.post(
  //       Uri.parse(postFavoritesUrl),
  //       body: data,
  //       headers: {
  //         'Content-Type': 'application/json',
  //         'Accept': 'application/json',
  //       },
  //     );

  //     log(response.body);
  //     final jsonResponse = json.decode(response.body);
  //     return jsonResponse["data"]['id'];
  //   } on SocketException catch (e) {
  //     if (kDebugMode) {
  //       print(e);
  //     }
  //     throw MessageException('No internet connection');
  //   } on MessageException catch (e, str) {
  //     if (kDebugMode) {
  //       print(e);
  //       print(str);
  //     }
  //     rethrow;
  //   } catch (e) {
  //     if (kDebugMode) {
  //       print(e);
  //     }
  //     throw MessageException('Something went wrong');
  //   }
  // }

  // Future<void> removeFavPost(int id) async {
  //   try {
  //     final response = await http.delete(
  //       Uri.parse("$postFavoritesUrl/$id"),
  //     );

  //     log(response.body);
  //   } on SocketException catch (e) {
  //     if (kDebugMode) {
  //       print(e);
  //     }
  //     throw MessageException('No internet connection');
  //   } on MessageException catch (e, str) {
  //     if (kDebugMode) {
  //       print(e);
  //       print(str);
  //     }
  //     rethrow;
  //   } catch (e) {
  //     if (kDebugMode) {
  //       print(e);
  //     }
  //     throw MessageException('Something went wrong');
  //   }
  // }

  // ///Create Comment
  // Future<int> createComment(String userId, String postId, String comment) async {
  //   try {
  //     final data = json.encode(
  //       <String, dynamic>{
  //         'data': {
  //           "posts": postId,
  //           "users_permissions_user": userId,
  //           "message": comment,
  //         },
  //       },
  //     );

  //     final response = await http.post(
  //       Uri.parse(postCommentsUrl(postId)),
  //       body: data,
  //       headers: {
  //         'Content-Type': 'application/json',
  //         'Accept': 'application/json',
  //       },
  //     );

  //     log(response.body);
  //     final jsonResponse = json.decode(response.body);
  //     return jsonResponse["data"]['id'];
  //   } on SocketException catch (e) {
  //     if (kDebugMode) {
  //       print(e);
  //     }
  //     throw MessageException('No internet connection');
  //   } on MessageException catch (e, str) {
  //     if (kDebugMode) {
  //       print(e);
  //       print(str);
  //     }
  //     rethrow;
  //   } catch (e) {
  //     if (kDebugMode) {
  //       print(e);
  //     }
  //     throw MessageException('Something went wrong');
  //   }
  // }

  // //Update a comment
  // Future<void> updateComment(String comment, int id) async {
  //   try {
  //     final data = json.encode(
  //       <String, dynamic>{
  //         'data': {
  //           "message": comment,
  //         },
  //       },
  //     );

  //     final response = await http.put(
  //       Uri.parse("$postCommentsUrl/$id"),
  //       body: data,
  //       headers: {
  //         'Content-Type': 'application/json',
  //         'Accept': 'application/json',
  //       },
  //     );

  //     log(response.body);
  //   } on SocketException catch (e) {
  //     if (kDebugMode) {
  //       print(e);
  //     }
  //     throw MessageException('No internet connection');
  //   } on MessageException catch (e, str) {
  //     if (kDebugMode) {
  //       print(e);
  //       print(str);
  //     }
  //     rethrow;
  //   } catch (e) {
  //     if (kDebugMode) {
  //       print(e);
  //     }
  //     throw MessageException('Something went wrong');
  //   }
  // }

  // //Delete a comment
  // Future<void> deleteComment(int id) async {
  //   try {
  //     final response = await http.delete(
  //       Uri.parse("$postCommentsUrl/$id"),
  //     );

  //     log(response.body);
  //   } on SocketException catch (e) {
  //     if (kDebugMode) {
  //       print(e);
  //     }
  //     throw MessageException('No internet connection');
  //   } on MessageException catch (e, str) {
  //     if (kDebugMode) {
  //       print(e);
  //       print(str);
  //     }
  //     rethrow;
  //   } catch (e) {
  //     if (kDebugMode) {
  //       print(e);
  //     }
  //     throw MessageException('Something went wrong');
  //   }
  // }

  // //Get All comments for a post
  // Future<List<Comment>> getComments(String postId) async {
  //   try {
  //     final response = await http.get(
  //       Uri.parse(postCommentsUrl(postId)),
  //     );

  //     log(response.body);
  //     final jsonResponse = json.decode(response.body);
  //     final List<Comment> comments = [];
  //     for (var comment in jsonResponse["data"]) {
  //       comments.add(Comment.fromJson(comment));
  //     }
  //     return comments;
  //   } on SocketException catch (e) {
  //     if (kDebugMode) {
  //       print(e);
  //     }
  //     throw MessageException('No internet connection');
  //   } on MessageException catch (e, str) {
  //     if (kDebugMode) {
  //       print(e);
  //       print(str);
  //     }
  //     rethrow;
  //   } catch (e) {
  //     if (kDebugMode) {
  //       print(e);
  //     }
  //     throw MessageException('Something went wrong');
  //   }
  // }

  // //Get Single Comment
  // Future<Comment> getComment(int id) async {
  //   try {
  //     final response = await http.get(
  //       Uri.parse("$postCommentsUrl/$id"),
  //     );

  //     log(response.body);
  //     final jsonResponse = json.decode(response.body);
  //     return Comment.fromJson(jsonResponse["data"]);
  //   } on SocketException catch (e) {
  //     if (kDebugMode) {
  //       print(e);
  //     }
  //     throw MessageException('No internet connection');
  //   } on MessageException catch (e, str) {
  //     if (kDebugMode) {
  //       print(e);
  //       print(str);
  //     }
  //     rethrow;
  //   } catch (e) {
  //     if (kDebugMode) {
  //       print(e);
  //     }
  //     throw MessageException('Something went wrong');
  //   }
  // }

  // //Like a comment
  // Future<int> likeComment(String userId, String commentId) async {
  //   try {
  //     final data = json.encode(
  //       <String, dynamic>{
  //         'data': {
  //           "comment": commentId,
  //           "users_permissions_user": userId,
  //         },
  //       },
  //     );

  //     final response = await http.post(
  //       Uri.parse(commentLikesUrl),
  //       body: data,
  //       headers: {
  //         'Content-Type': 'application/json',
  //         'Accept': 'application/json',
  //       },
  //     );

  //     log(response.body);
  //     final jsonResponse = json.decode(response.body);
  //     return jsonResponse["data"]['id'];
  //   } on SocketException catch (e) {
  //     if (kDebugMode) {
  //       print(e);
  //     }
  //     throw MessageException('No internet connection');
  //   } on MessageException catch (e, str) {
  //     if (kDebugMode) {
  //       print(e);
  //       print(str);
  //     }
  //     rethrow;
  //   } catch (e) {
  //     if (kDebugMode) {
  //       print(e);
  //     }
  //     throw MessageException('Something went wrong');
  //   }
  // }

  // //Remove a like from comment
  // Future<void> removeLikeComment(int id) async {
  //   try {
  //     final response = await http.delete(
  //       Uri.parse("$commentLikesUrl/$id"),
  //     );

  //     log(response.body);
  //   } on SocketException catch (e) {
  //     if (kDebugMode) {
  //       print(e);
  //     }
  //     throw MessageException('No internet connection');
  //   } on MessageException catch (e, str) {
  //     if (kDebugMode) {
  //       print(e);
  //       print(str);
  //     }
  //     rethrow;
  //   } catch (e) {
  //     if (kDebugMode) {
  //       print(e);
  //     }
  //     throw MessageException('Something went wrong');
  //   }
  // }

  // //Create a reply to a comment
  // Future<int> createReply(String userId, String commentId, String reply) async {
  //   try {
  //     final data = json.encode(
  //       <String, dynamic>{
  //         'data': {
  //           "comment": commentId,
  //           "users_permissions_user": userId,
  //           "message": reply,
  //         },
  //       },
  //     );

  //     final response = await http.post(
  //       Uri.parse(commentRepliesUrl),
  //       body: data,
  //       headers: {
  //         'Content-Type': 'application/json',
  //         'Accept': 'application/json',
  //       },
  //     );

  //     log(response.body);
  //     final jsonResponse = json.decode(response.body);
  //     return jsonResponse["data"]['id'];
  //   } on SocketException catch (e) {
  //     if (kDebugMode) {
  //       print(e);
  //     }
  //     throw MessageException('No internet connection');
  //   } on MessageException catch (e, str) {
  //     if (kDebugMode) {
  //       print(e);
  //       print(str);
  //     }
  //     rethrow;
  //   } catch (e) {
  //     if (kDebugMode) {
  //       print(e);
  //     }
  //     throw MessageException('Something went wrong');
  //   }
  // }

  // //Update a reply to a comment
  // Future<void> updateReply(String reply, int id) async {
  //   try {
  //     final data = json.encode(
  //       <String, dynamic>{
  //         'data': {
  //           "message": reply,
  //         },
  //       },
  //     );

  //     final response = await http.put(
  //       Uri.parse("$commentRepliesUrl/$id"),
  //       body: data,
  //       headers: {
  //         'Content-Type': 'application/json',
  //         'Accept': 'application/json',
  //       },
  //     );

  //     log(response.body);
  //   } on SocketException catch (e) {
  //     if (kDebugMode) {
  //       print(e);
  //     }
  //     throw MessageException('No internet connection');
  //   } on MessageException catch (e, str) {
  //     if (kDebugMode) {
  //       print(e);
  //       print(str);
  //     }
  //     rethrow;
  //   } catch (e) {
  //     if (kDebugMode) {
  //       print(e);
  //     }
  //     throw MessageException('Something went wrong');
  //   }
  // }

  // //Delete a reply
  // Future<void> deleteReply(int id) async {
  //   try {
  //     final response = await http.delete(
  //       Uri.parse("$commentRepliesUrl/$id"),
  //     );

  //     log(response.body);
  //   } on SocketException catch (e) {
  //     if (kDebugMode) {
  //       print(e);
  //     }
  //     throw MessageException('No internet connection');
  //   } on MessageException catch (e, str) {
  //     if (kDebugMode) {
  //       print(e);
  //       print(str);
  //     }
  //     rethrow;
  //   } catch (e) {
  //     if (kDebugMode) {
  //       print(e);
  //     }
  //     throw MessageException('Something went wrong');
  //   }
  // }

  // //Create comment reply like
  // Future<int> likeReply(int userId, int replyId) async {
  //   try {
  //     final data = json.encode(
  //       <String, dynamic>{
  //         'data': {
  //           "comment_reply": replyId,
  //           "users_permissions_user": userId,
  //         },
  //       },
  //     );

  //     log("$userId $replyId");

  //     // throw Exception();

  //     final response = await http.post(
  //       Uri.parse(commentReplyLikesUrl),
  //       body: data,
  //       headers: {
  //         'Content-Type': 'application/json',
  //         'Accept': 'application/json',
  //       },
  //     );

  //     log(response.body);
  //     final jsonResponse = json.decode(response.body);
  //     return jsonResponse["data"]['id'];
  //   } on SocketException catch (e) {
  //     if (kDebugMode) {
  //       print(e);
  //     }
  //     throw MessageException('No internet connection');
  //   } on MessageException catch (e, str) {
  //     if (kDebugMode) {
  //       print(e.message);
  //       print(str);
  //     }
  //     rethrow;
  //   } catch (e) {
  //     if (kDebugMode) {
  //       print(e);
  //     }
  //     throw MessageException('Something went wrong');
  //   }
  // }

  // //Remove a like from comment reply
  // Future<void> removeLikeReply(int id) async {
  //   try {
  //     final response = await http.delete(
  //       Uri.parse("$commentReplyLikesUrl/$id"),
  //     );

  //     log(response.body);
  //   } on SocketException catch (e) {
  //     if (kDebugMode) {
  //       print(e);
  //     }
  //     throw MessageException('No internet connection');
  //   } on MessageException catch (e, str) {
  //     if (kDebugMode) {
  //       print(e);
  //       print(str);
  //     }
  //     rethrow;
  //   } catch (e) {
  //     if (kDebugMode) {
  //       print(e);
  //     }
  //     throw MessageException('Something went wrong');
  //   }
  // }

  // //All My Fav Posts
  // Future<List<Post>> getMyFavPosts(String userId) async {
  //   try {
  //     final response = await http.get(
  //       Uri.parse(usersFavPosts(userId)),
  //     );

  //     log("Fav ${response.body}");
  //     final jsonResponse = json.decode(response.body);
  //     final List<Post> posts = [];
  //     for (var post in jsonResponse["data"]) {
  //       posts.add(Post.fromJson(post));
  //     }
  //     return posts;
  //   } on SocketException catch (e) {
  //     if (kDebugMode) {
  //       print(e);
  //     }
  //     throw MessageException('No internet connection');
  //   } on MessageException catch (e, str) {
  //     if (kDebugMode) {
  //       print(e);
  //       print(str);
  //     }
  //     rethrow;
  //   } catch (e) {
  //     if (kDebugMode) {
  //       print(e);
  //     }
  //     throw MessageException('Something went wrong');
  //   }
  // }

  // //Get Posts by search
  // Future<List<Post>> getSearchPosts({String name = '', List<String> tags = const [], String location = ''}) async {
  //   try {
  //     String url = allPosts;

  //     if (name.isNotEmpty) {
  //       url += "&filters[post_title][\$contains]=$name";
  //     }

  //     for (final tag in tags) {
  //       url += "&filters[tag][\$contains]=$tag";
  //     }

  //     if (location.isNotEmpty) {
  //       url += " &filters[location][\$contains]=$location";
  //     }

  //     final response = await http.get(
  //       Uri.parse(url),
  //     );

  //     log("Search ${response.body}");
  //     final jsonResponse = json.decode(response.body);
  //     final List<Post> posts = [];
  //     for (var post in jsonResponse["data"]) {
  //       posts.add(Post.fromJson(post));
  //     }
  //     return posts;
  //   } on SocketException catch (e) {
  //     if (kDebugMode) {
  //       print(e);
  //     }
  //     throw MessageException('No internet connection');
  //   } on MessageException catch (e, str) {
  //     if (kDebugMode) {
  //       print(e);
  //       print(str);
  //     }
  //     rethrow;
  //   } catch (e) {
  //     if (kDebugMode) {
  //       print(e);
  //     }
  //     throw MessageException('Something went wrong');
  //   }
  // }

  // Future<void> deletePost(int id) async {
  //   try {
  //     final response = await http.delete(
  //       Uri.parse("$postUrl/$id"),
  //     );

  //     log(response.body);
  //   } on SocketException catch (e) {
  //     if (kDebugMode) {
  //       print(e);
  //     }
  //     throw MessageException('No internet connection');
  //   } on MessageException catch (e, str) {
  //     if (kDebugMode) {
  //       print(e);
  //       print(str);
  //     }
  //     rethrow;
  //   } catch (e) {
  //     if (kDebugMode) {
  //       print(e);
  //     }
  //     throw MessageException('Something went wrong');
  //   }
  // }
}
