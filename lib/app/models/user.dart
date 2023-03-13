class User {
  int? id;
  String? fullName;
  String? token;
  String? email;
  String? password;
  String? userName;
  int? mobile;
  String? picture;
  int? companyId;
  int? companyLocationId;
  String? roleName;
  int? roleId;
  bool? isEmailVerified;
  int? errorCode;
  bool? success;
  String? message;

  User(
      {required this.id,
      this.fullName,
      this.token,
      this.email,
      this.password,
      this.userName,
      this.mobile,
      this.picture,
      this.companyId,
      this.companyLocationId,
      this.roleName,
      this.roleId,
      this.isEmailVerified = false,
      this.errorCode = 3,
      this.success = false,
      this.message = "Email not verified"});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    fullName = json['fullName'];
    token = json['token'];
    email = json['email'];
    password = json['password'];
    userName = json['userName'];
    mobile = json['mobile'];
    picture = json['picture'];
    companyId = json['companyId'];
    companyLocationId = json['companyLocationId'];
    roleName = json['roleName'];
    roleId = json['roleId'];
    isEmailVerified = json['isEmailVerified'];
    errorCode = json['errorCode'];
    success = json['success'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['fullName'] = fullName;
    data['token'] = token;
    data['email'] = email;
    data['password'] = password;
    data['userName'] = userName;
    data['mobile'] = mobile;
    data['picture'] = picture;
    data['companyId'] = companyId;
    data['companyLocationId'] = companyLocationId;
    data['roleName'] = roleName;
    data['roleId'] = roleId;
    data['isEmailVerified'] = isEmailVerified;
    data['errorCode'] = errorCode;
    data['success'] = success;
    data['message'] = message;
    return data;
  }
}
