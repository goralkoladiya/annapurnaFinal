class VoterIdSearchModel {
  bool? status;
  String? message;
  List<VoterIDSerchData>? voterIDSerchData;

  VoterIdSearchModel({this.status, this.message, this.voterIDSerchData});

  VoterIdSearchModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['VoterIDSerchData'] != null) {
      voterIDSerchData = <VoterIDSerchData>[];
      json['VoterIDSerchData'].forEach((v) {
        voterIDSerchData!.add(new VoterIDSerchData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.voterIDSerchData != null) {
      data['VoterIDSerchData'] =
          this.voterIDSerchData!.map((v) => v.toJson()).toList();
    }
    return data;
  }

  @override
  String toString() {
    return 'VoterIdSearchModel{status: $status, message: $message, voterIDSerchData: $voterIDSerchData}';
  }
}

class VoterIDSerchData {
  String? applicationNo;
  String? applicantName;
  String? father;
  String? primaryKYCNo;
  String? applicationDate;
  String? lastCBCheckDate;
  String? cBStatus;
  String? appliedAmont;
  String? stageStatus;
  String? presentAddress;

  VoterIDSerchData(
      {this.applicationNo,
        this.applicantName,
        this.father,
        this.primaryKYCNo,
        this.applicationDate,
        this.lastCBCheckDate,
        this.cBStatus,
        this.appliedAmont,
        this.stageStatus,
        this.presentAddress});

  VoterIDSerchData.fromJson(Map<String, dynamic> json) {
    applicationNo = json['ApplicationNo'];
    applicantName = json['ApplicantName'];
    father = json['Father'];
    primaryKYCNo = json['PrimaryKYCNo'];
    applicationDate = json['ApplicationDate'];
    lastCBCheckDate = json['LastCBCheckDate'];
    cBStatus = json['CBStatus'];
    appliedAmont = json['AppliedAmont'];
    stageStatus = json['StageStatus'];
    presentAddress = json['PresentAddress'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ApplicationNo'] = this.applicationNo;
    data['ApplicantName'] = this.applicantName;
    data['Father'] = this.father;
    data['PrimaryKYCNo'] = this.primaryKYCNo;
    data['ApplicationDate'] = this.applicationDate;
    data['LastCBCheckDate'] = this.lastCBCheckDate;
    data['CBStatus'] = this.cBStatus;
    data['AppliedAmont'] = this.appliedAmont;
    data['StageStatus'] = this.stageStatus;
    data['PresentAddress'] = this.presentAddress;
    return data;
  }

  @override
  String toString() {
    return 'VoterIDSerchData{applicationNo: $applicationNo, applicantName: $applicantName, father: $father, primaryKYCNo: $primaryKYCNo, applicationDate: $applicationDate, lastCBCheckDate: $lastCBCheckDate, cBStatus: $cBStatus, appliedAmont: $appliedAmont, stageStatus: $stageStatus, presentAddress: $presentAddress}';
  }
}