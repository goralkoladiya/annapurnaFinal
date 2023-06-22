class ExsitingDataDetailsModel {
  bool? status;
  String? message;
  List<ExsitingDataDetails>? exsitingDataDetails;

  ExsitingDataDetailsModel(
      {this.status, this.message, this.exsitingDataDetails});

  ExsitingDataDetailsModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['ExsitingDataDetails'] != null) {
      exsitingDataDetails = <ExsitingDataDetails>[];
      json['ExsitingDataDetails'].forEach((v) {
        exsitingDataDetails!.add(new ExsitingDataDetails.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.exsitingDataDetails != null) {
      data['ExsitingDataDetails'] =
          this.exsitingDataDetails!.map((v) => v.toJson()).toList();
    }
    return data;
  }

  @override
  String toString() {
    return 'ExsitingDataDetailsModel{status: $status, message: $message, exsitingDataDetails: $exsitingDataDetails}';
  }
}

class ExsitingDataDetails {
  String? customerId;
  String? applicantName;
  String? gender;
  String? spouse;
  String? father;
  String? dOB;
  String? voterNO;
  String? presentAddress;

  ExsitingDataDetails(
      {this.customerId,
        this.applicantName,
        this.gender,
        this.spouse,
        this.father,
        this.dOB,
        this.voterNO,
        this.presentAddress});

  ExsitingDataDetails.fromJson(Map<String, dynamic> json) {
    customerId = json['CustomerId'];
    applicantName = json['ApplicantName'];
    gender = json['Gender'];
    spouse = json['Spouse'];
    father = json['Father'];
    dOB = json['DOB'];
    voterNO = json['VoterNO'];
    presentAddress = json['PresentAddress'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['CustomerId'] = this.customerId;
    data['ApplicantName'] = this.applicantName;
    data['Gender'] = this.gender;
    data['Spouse'] = this.spouse;
    data['Father'] = this.father;
    data['DOB'] = this.dOB;
    data['VoterNO'] = this.voterNO;
    data['PresentAddress'] = this.presentAddress;
    return data;
  }

  @override
  String toString() {
    return 'ExsitingDataDetails{customerId: $customerId, applicantName: $applicantName, gender: $gender, spouse: $spouse, father: $father, dOB: $dOB, voterNO: $voterNO, presentAddress: $presentAddress}';
  }
}