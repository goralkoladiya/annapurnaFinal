class LuckCheckModel {
  bool? status;
  String? message;
  List<LuckCheckDataDetails>? luckCheckDataDetails;

  LuckCheckModel({this.status, this.message, this.luckCheckDataDetails});

  LuckCheckModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['LuckCheckDataDetails'] != null) {
      luckCheckDataDetails = <LuckCheckDataDetails>[];
      json['LuckCheckDataDetails'].forEach((v) {
        luckCheckDataDetails!.add(new LuckCheckDataDetails.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.luckCheckDataDetails != null) {
      data['LuckCheckDataDetails'] =
          this.luckCheckDataDetails!.map((v) => v.toJson()).toList();
    }
    return data;
  }

  @override
  String toString() {
    return 'LuckCheckModel{status: $status, message: $message, luckCheckDataDetails: $luckCheckDataDetails}';
  }
}

class LuckCheckDataDetails {
  String? applicantName;
  String? spouse;
  String? voterId;
  String? centreName;
  String? groupName;

  LuckCheckDataDetails(
      {this.applicantName,
        this.spouse,
        this.voterId,
        this.centreName,
        this.groupName});

  LuckCheckDataDetails.fromJson(Map<String, dynamic> json) {
    applicantName = json['ApplicantName'];
    spouse = json['Spouse'];
    voterId = json['VoterId'];
    centreName = json['CentreName'];
    groupName = json['GroupName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ApplicantName'] = this.applicantName;
    data['Spouse'] = this.spouse;
    data['VoterId'] = this.voterId;
    data['CentreName'] = this.centreName;
    data['GroupName'] = this.groupName;
    return data;
  }

  @override
  String toString() {
    return 'LuckCheckDataDetails{applicantName: $applicantName, spouse: $spouse, voterId: $voterId, centreName: $centreName, groupName: $groupName}';
  }
}