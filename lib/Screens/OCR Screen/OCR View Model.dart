import 'package:annapurna225/api_factory/prefs/pref_utils.dart';
import 'package:flutter/cupertino.dart';

import '../../Modals/VoterIdSearchModel.dart';
import '../../api_factory/api.dart';
import '../../api_factory/api_end_points.dart';
import '../../utils/utils.dart';

class OCRViewModel extends ChangeNotifier{

  VoterIdSearchModel? voterIdSearchModel;
  void VoterIdSearch({
    required BuildContext context,
    String? UserID,
    String? VoterID,
  }) {
    var params = {
      "UserID": UserID,
      "UserRole": "HIG",
      "VoterId":"VoterID",
    };
    Api.request(
      method: HttpMethod.post,
      path: ApiEndPoints.voterIdSearch,
      params: params,
      isCustomResponse: true,
      context: context,
      onResponse: (response) {
        if (response['status'] != false) {
          voterIdSearchModel=VoterIdSearchModel.fromJson(response);
          print("VoterID ::::::: $voterIdSearchModel");
          notifyListeners();
        }else{
          handleApiError(response['message'], context);
        }
      },
    );
  }
}