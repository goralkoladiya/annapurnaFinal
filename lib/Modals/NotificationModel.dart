class NotificationModel {
  bool? status;
  String? message;
  List<NotificationDataDetails>? notificationDataDetails;

  NotificationModel({this.status, this.message, this.notificationDataDetails});

  NotificationModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['NotificationDataDetails'] != null) {
      notificationDataDetails = <NotificationDataDetails>[];
      json['NotificationDataDetails'].forEach((v) {
        notificationDataDetails!.add(new NotificationDataDetails.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.notificationDataDetails != null) {
      data['NotificationDataDetails'] =
          this.notificationDataDetails!.map((v) => v.toJson()).toList();
    }
    return data;
  }

  @override
  String toString() {
    return 'NotificationModel{status: $status, message: $message, notificationDataDetails: $notificationDataDetails}';
  }
}

class NotificationDataDetails {
  String? title;
  String? description;

  NotificationDataDetails({this.title, this.description});

  NotificationDataDetails.fromJson(Map<String, dynamic> json) {
    title = json['Title'];
    description = json['Description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Title'] = this.title;
    data['Description'] = this.description;
    return data;
  }

  @override
  String toString() {
    return 'NotificationDataDetails{title: $title, description: $description}';
  }
}