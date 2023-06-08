class ClientDetailsModel {
  bool? status;
  String? message;
  List<ClientDetailsData1>? clientDetailsData1;

  ClientDetailsModel({this.status, this.message, this.clientDetailsData1});

  ClientDetailsModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['ClientDetailsData1'] != null) {
      clientDetailsData1 = <ClientDetailsData1>[];
      json['ClientDetailsData1'].forEach((v) {
        clientDetailsData1!.add(new ClientDetailsData1.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.clientDetailsData1 != null) {
      data['ClientDetailsData1'] =
          this.clientDetailsData1!.map((v) => v.toJson()).toList();
    }
    return data;
  }

  @override
  String toString() {
    return 'ClientDetailsModel{status: $status, message: $message, clientDetailsData1: $clientDetailsData1}';
  }
}

class ClientDetailsData1 {
  String? gramPanchayat;
  String? blockTehsil;
  String? district;
  String? censusID;
  String? lat;
  String? long;

  ClientDetailsData1(
      {this.gramPanchayat,
        this.blockTehsil,
        this.district,
        this.censusID,
        this.lat,
        this.long});

  ClientDetailsData1.fromJson(Map<String, dynamic> json) {
    gramPanchayat = json['GramPanchayat'];
    blockTehsil = json['BlockTehsil'];
    district = json['District'];
    censusID = json['CensusID'];
    lat = json['Lat'];
    long = json['Long'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['GramPanchayat'] = this.gramPanchayat;
    data['BlockTehsil'] = this.blockTehsil;
    data['District'] = this.district;
    data['CensusID'] = this.censusID;
    data['Lat'] = this.lat;
    data['Long'] = this.long;
    return data;
  }

  @override
  String toString() {
    return 'ClientDetailsData1{gramPanchayat: $gramPanchayat, blockTehsil: $blockTehsil, district: $district, censusID: $censusID, lat: $lat, long: $long}';
  }
}