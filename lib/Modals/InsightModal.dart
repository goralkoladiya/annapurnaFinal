class InsightModal {
  bool? status;
  String? message;
  List<DashBoardDetails>? dashBoardDetails;

  InsightModal({this.status, this.message, this.dashBoardDetails});

  InsightModal.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['DashBoardDetails'] != null) {
      dashBoardDetails = <DashBoardDetails>[];
      json['DashBoardDetails'].forEach((v) {
        dashBoardDetails!.add(new DashBoardDetails.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.dashBoardDetails != null) {
      data['DashBoardDetails'] =
          this.dashBoardDetails!.map((v) => v.toJson()).toList();
    }
    return data;
  }

  @override
  String toString() {
    return 'InsightModal{status: $status, message: $message, dashBoardDetails: $dashBoardDetails}';
  }
}

class DashBoardDetails {
  String? noofApplications;
  String? amount1;
  String? applicationsSanctioned;
  String? amount2;
  String? inprocessClients;
  String? amount3;
  String? disbursedApplicants;
  String? amount4;
  String? rejectedApplications;
  String? amount5;
  String? activeClients;
  String? amount6;

  DashBoardDetails(
      {this.noofApplications,
        this.amount1,
        this.applicationsSanctioned,
        this.amount2,
        this.inprocessClients,
        this.amount3,
        this.disbursedApplicants,
        this.amount4,
        this.rejectedApplications,
        this.amount5,
        this.activeClients,
        this.amount6});

  DashBoardDetails.fromJson(Map<String, dynamic> json) {
    noofApplications = json['NoofApplications'];
    amount1 = json['Amount_1'];
    applicationsSanctioned = json['ApplicationsSanctioned'];
    amount2 = json['Amount_2'];
    inprocessClients = json['InprocessClients'];
    amount3 = json['Amount_3'];
    disbursedApplicants = json['DisbursedApplicants'];
    amount4 = json['Amount_4'];
    rejectedApplications = json['RejectedApplications'];
    amount5 = json['Amount_5'];
    activeClients = json['ActiveClients'];
    amount6 = json['Amount_6'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['NoofApplications'] = this.noofApplications;
    data['Amount_1'] = this.amount1;
    data['ApplicationsSanctioned'] = this.applicationsSanctioned;
    data['Amount_2'] = this.amount2;
    data['InprocessClients'] = this.inprocessClients;
    data['Amount_3'] = this.amount3;
    data['DisbursedApplicants'] = this.disbursedApplicants;
    data['Amount_4'] = this.amount4;
    data['RejectedApplications'] = this.rejectedApplications;
    data['Amount_5'] = this.amount5;
    data['ActiveClients'] = this.activeClients;
    data['Amount_6'] = this.amount6;
    return data;
  }

  @override
  String toString() {
    return 'DashBoardDetails{noofApplications: $noofApplications, amount1: $amount1, applicationsSanctioned: $applicationsSanctioned, amount2: $amount2, inprocessClients: $inprocessClients, amount3: $amount3, disbursedApplicants: $disbursedApplicants, amount4: $amount4, rejectedApplications: $rejectedApplications, amount5: $amount5, activeClients: $activeClients, amount6: $amount6}';
  }
}