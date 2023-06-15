class User {
  bool? status;
  String? message;
  String? userRole;

  User({this.status, this.message, this.userRole});

  User.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    userRole = json['UserRole'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    data['UserRole'] = this.userRole;
    return data;
  }
}