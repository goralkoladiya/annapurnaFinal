import 'package:flutter/cupertino.dart';

import '../../api_factory/api.dart';
import '../../api_factory/api_end_points.dart';
import '../../utils/utils.dart';

class OCRViewModel extends ChangeNotifier{

  void VoterIdSearch({
    required BuildContext context,
    String? UserID,
  }) {
    var params = {
      "UserID": UserID,
      "UserRole": "HIG",
      "VoterId":"123457896",
    };
    Api.request(
      method: HttpMethod.post,
      path: ApiEndPoints.voterIdSearch,
      params: params,
      isCustomResponse: true,
      context: context,
      onResponse: (response) {
        if (response['status'] != false) {

          print("OCR Screen :: ${response}");

        }else{
          handleApiError(response['message'], context);
        }
      },
    );
  }
}