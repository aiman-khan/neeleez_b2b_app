// import 'dart:convert';
// import 'dart:developer';
// import 'dart:io';

// import 'package:flutter/foundation.dart';
// import 'package:http/http.dart' as http;

// import '../app/models/user.dart';
// import 'endpoints.dart';

// class AuthenticationService with Urls {
//   ///Login
//   Future<User> login(String username, String password) async {
//     try {
//       final response = await http.post(
//         Uri.parse(Urls.authenticateUser),
//         headers: {
//           'Content-Type': 'application/json',
//         },
//         body: json.encode(
//           {'username': username, 'password': password},
//         ),
//       );

//       final jsonResponse = json.decode(response.body);

//       if (response.statusCode == 200) {
//         jwt = jsonResponse['jwt'];
//         final user = User.fromJson(json.decode(response.body)["user"]);
//         // await user.save();
//         return user;
//       } else {
//         throw MessageException(jsonResponse['error']['message']);
//       }
//     } on SocketException catch (e) {
//       if (kDebugMode) {
//         print(e);
//       }
//       throw MessageException('No internet connection');
//     } on MessageException catch (e) {
//       if (kDebugMode) {
//         print(e);
//       }
//       rethrow;
//     } catch (e) {
//       if (kDebugMode) {
//         print(e);
//       }
//       throw MessageException('Something went wrong');
//     }
//   }

//   ///Register
//   Future<User> register(
//     String username,
//     String email,
//     String password, {
//     String openId = '',
//   }) async {
//     try {
//       final response = await http.post(
//         Uri.parse(registerUrl),
//         headers: {
//           'Content-Type': 'application/json',
//         },
//         body: json.encode(
//           {
//             'username': email,
//             'email': email,
//             'password': password,
//             "full_name": username,
//             'open_id': openId,
//           },
//         ),
//       );
//       final jsonResponse = json.decode(response.body);

//       if (response.statusCode == 200) {
//         jwt = jsonResponse['jwt'];
//         final user = User.fromJson(json.decode(response.body)["user"]);
//         await user.save();
//         return user;
//       } else {
//         throw MessageException(jsonResponse['error']['message']);
//       }
//     } on SocketException catch (e) {
//       if (kDebugMode) {
//         print(e);
//       }
//       throw MessageException('No internet connection');
//     } on MessageException catch (e) {
//       if (kDebugMode) {
//         print(e);
//       }
//       rethrow;
//     } catch (e) {
//       if (kDebugMode) {
//         print(e);
//       }
//       throw MessageException('Something went wrong');
//     }
//   }

//   Future<User> userByEmail(String email, {bool save = true}) async {
//     try {
//       final response = await http.get(
//         Uri.parse(userByEmailUrl(email)),
//       );
//       final jsonResponse = json.decode(response.body);

//       if (response.statusCode == 200) {
//         final jsonObjects = List<Map<String, dynamic>>.from(jsonResponse);
//         if (jsonObjects.isEmpty) {
//           throw UserNotFoundException();
//         } else {
//           final user = User.fromJson(jsonObjects[0]);
//           if (save) {
//             await user.save();
//           }
//           return user;
//         }
//       } else {
//         throw MessageException(jsonResponse['error']['message']);
//       }
//     } on SocketException catch (e) {
//       if (kDebugMode) {
//         print(e);
//       }
//       throw MessageException('No internet connection');
//     } on MessageException catch (e) {
//       if (kDebugMode) {
//         print(e);
//       }
//       rethrow;
//     } catch (e) {
//       if (kDebugMode) {
//         print(e);
//       }
//       throw MessageException('Something went wrong');
//     }
//   }

//   Future<User> userByOpenId(String openId, {bool save = true}) async {
//     try {
//       final response = await http.get(
//         Uri.parse(userByOpenIdUrl(openId)),
//       );
//       final jsonResponse = json.decode(response.body);

//       if (response.statusCode == 200) {
//         final jsonObjects = List<Map<String, dynamic>>.from(jsonResponse);
//         if (jsonObjects.isEmpty) {
//           throw UserNotFoundException();
//         } else {
//           final user = User.fromJson(jsonObjects[0]);
//           if (save) {
//             await user.save();
//           }
//           return user;
//         }
//       } else {
//         throw MessageException(jsonResponse['error']['message']);
//       }
//     } on SocketException catch (e) {
//       if (kDebugMode) {
//         print(e);
//       }
//       throw MessageException('No internet connection');
//     } on UserNotFoundException {
//       rethrow;
//     } on MessageException catch (e) {
//       if (kDebugMode) {
//         print(e);
//       }
//       rethrow;
//     } catch (e) {
//       if (kDebugMode) {
//         print(e);
//       }
//       throw MessageException('Something went wrong');
//     }
//   }

//   //Update
//   Future<User> updateUser({
//     required int uid,
//     required String name,
//     required String email,
//     required String dob,
//     required String gender,
//     required String phone,
//     XFile? image,
//   }) async {
//     String? url;

//     try {
//       if (image != null) {
//         http.MultipartFile? multipartFile;
//         multipartFile =
//             await http.MultipartFile.fromPath('files', File(image.path).path);
//         try {
//           final phtoMultipartRequest =
//               http.MultipartRequest('POST', Uri.parse(uploadUrl));
//           phtoMultipartRequest.files.add(multipartFile);
//           final photoResponse = await phtoMultipartRequest.send();

//           final stringPhotoResponse =
//               await photoResponse.stream.bytesToString();
//           final jsonPhotoResponse = await json.decode(stringPhotoResponse);
//           url = jsonPhotoResponse.first['url'];
//           log(stringPhotoResponse.toString());
//         } catch (e) {
//           log(e.toString());
//           rethrow;
//         }
//       }

//       final multiPartRequest =
//           http.MultipartRequest('PUT', Uri.parse("$usersUrl/$uid"));

//       final data = {
//         "full_name": name,
//         "email": email,
//         "gender": gender,
//         "phone": phone,
//       };

//       if (url != null) {
//         data['img_url'] = Urls.baseUrl + url;
//       }

//       if (dob.isNotEmpty) {
//         data["dob"] = dob;
//       }
//       multiPartRequest.fields.addAll(data);
//       // if (multipartFile != null) {
//       //   multiPartRequest.files.add(multipartFile);
//       // }
//       final response = await multiPartRequest.send();
//       final stringResponse = await response.stream.bytesToString();

//       final jsonResponse = json.decode(stringResponse);
//       log(jsonResponse.toString());

//       if (response.statusCode == 200) {
//         final user = await userByEmail(email, save: false);
//         HNotificationModel(
//           title: "Profile Updated",
//           body: "Successfully updated your profile",
//         ).fire();

//         user.save();
//         return user;
//       } else {
//         throw MessageException(jsonResponse['error']['message']);
//       }
//     } on SocketException catch (e) {
//       if (kDebugMode) {
//         print(e);
//       }
//       throw MessageException('No internet connection');
//     } on MessageException catch (e, str) {
//       if (kDebugMode) {
//         print(e);
//         print(str);
//       }
//       rethrow;
//     } catch (e) {
//       if (kDebugMode) {
//         print(e);
//       }
//       throw MessageException('Something went wrong');
//     }
//   }

//   Future<void> updateUserToken(User user, String token) async {
//     try {
//       final multiPartRequest =
//           http.MultipartRequest('PUT', Uri.parse("$usersUrl/${user.id}"));

//       final data = {
//         "notificationToken": token,
//       };

//       multiPartRequest.fields.addAll(data);

//       await multiPartRequest.send();
//     } catch (e) {
//       //
//     }
//   }

//   Future<HUser> authWithHuawei() async {
//     try {
//       final auth = await HAccount.signIn();
//       return auth;
//     } catch (e) {
//       rethrow;
//     }
//   }

//   //Send Reset Email
//   Future<void> sendResetEmail(String email) async {
//     try {
//       await userByEmail(email, save: false);
//       await http.get(Uri.parse("$sendEmailReset?email=$email&appid=wehelp"));
//     } catch (e) {
//       rethrow;
//     }
//   }

//   //Verify OTP
//   Future<void> verifyCode(String email, String code) async {
//     final response = await http.get(
//         Uri.parse("$verifyOTP?email=${email.trim()}&appid=wehelp&otp=$code"));
//     log(response.body);
//     final jsonResponse = json.decode(response.body);
//     if (jsonResponse['code'] != 200) {
//       throw Exception();
//     }
//   }

//   //Reset Password
//   Future<void> resetPassword(String email, String password) async {
//     final user = await userByEmail(email, save: false);
//     final response = await http.put(
//       Uri.parse(
//         "$usersUrl/${user.id}}",
//       ),
//       body: {"password": password},
//     );

//     if (response.statusCode != 200) {
//       throw Exception("Error Accured");
//     }
//   }

//   Future<void> updateNotificationToken(String id, String token) async {
//     http.put(
//       Uri.parse("$usersUrl/$id"),
//       body: {"notification_token": token},
//       headers: {
//         'Accept': 'application/json',
//         'Content-type': 'application/json',
//       },
//     );
//   }
// }

// class UserNotFoundException implements Exception {}
