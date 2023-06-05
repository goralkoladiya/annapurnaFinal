class StatisticsDataDetailsModal {
  bool? status;
  String? message;
  List<StatisticsDataDetailsModal>? statisticsDataDetails;

  StatisticsDataDetailsModal(
      {this.status, this.message, this.statisticsDataDetails});

  StatisticsDataDetailsModal.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['StatisticsDataDetails'] != null) {
      statisticsDataDetails = <StatisticsDataDetailsModal>[];
      json['StatisticsDataDetails'].forEach((v) {
        statisticsDataDetails!.add(new StatisticsDataDetailsModal.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.statisticsDataDetails != null) {
      data['StatisticsDataDetails'] =
          this.statisticsDataDetails!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class StatisticsDataDetails {
  String? mONTHName;
  String? clients;

  StatisticsDataDetails({this.mONTHName, this.clients});

  StatisticsDataDetails.fromJson(Map<String, dynamic> json) {
    mONTHName = json['MONTH_Name'];
    clients = json['Clients'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['MONTH_Name'] = this.mONTHName;
    data['Clients'] = this.clients;
    return data;
  }
}