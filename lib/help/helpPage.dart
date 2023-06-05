import 'package:annapurna225/help/videosPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../api_factory/prefs/pref_utils.dart';
import '../components/TextBtnWidget.dart';
import '../components/constants.dart';
import '../notifier/providers.dart';
import '../utils/theme_config.dart';

class helpPage extends ConsumerStatefulWidget {
  const helpPage({Key? key}) : super(key: key);

  @override
  ConsumerState<helpPage> createState() => _helpPageState();
}

class _helpPageState extends ConsumerState<helpPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    FAQAPICALL();
  }

  FAQAPICALL() async {
    String userid=await PrefUtils.getUserId()??'';
    ref.watch(authenticationProvider).FAQAPI(
      context: context,
      userName:userid,
      UserRole: "",
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
          child: Card(
        child: Container(
          child: Column(
            children: [
              ExpansionTile(
                backgroundColor: ThemeColor.expansioncolor,
                collapsedBackgroundColor: ThemeColor.expansioncolor,
                textColor: Colors.black87,
                title: Text(
                  "What is Lorem Ipsum?",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                children: [
                  Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                    style: TextStyle(),
                  ),
                ],
              ),
            ],
          ),
        ),
      )),
    );
  }
}
