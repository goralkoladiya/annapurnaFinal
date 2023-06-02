import 'package:annapurna225/AppImages.dart';
import 'package:annapurna225/api_factory/prefs/pref_utils.dart';
import 'package:annapurna225/components/dialog.dart';
import 'package:annapurna225/widgets/ab_button.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../notifier/providers.dart';
import '../widgets/ab_text_input.dart';

class changePassword extends ConsumerStatefulWidget {
  const changePassword({Key? key}) : super(key: key);

  @override
  ConsumerState<changePassword> createState() => _changePasswordState();
}

class _changePasswordState extends ConsumerState<changePassword> {
  TextEditingController oldpass=TextEditingController();
  TextEditingController newpass=TextEditingController();
  TextEditingController confirmpass=TextEditingController();
  bool isObsecure = true;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    double theight=MediaQuery.of(context).size.height;
    double twidth=MediaQuery.of(context).size.width;
    double statusbar=MediaQuery.of(context).padding.top;
    double navbar=MediaQuery.of(context).padding.bottom;
    double bheight=theight-statusbar-navbar;
    return Scaffold(
      body: Form(
        key: _formKey,
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional.topStart,
                child: Image.asset(AppImages.waveOne, width: 300),
              ),
              Align(
                alignment: AlignmentDirectional.bottomCenter,
                child: Image.asset(AppImages.waveTwo),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(child: Image.asset(AppImages.logo, width: 250)),
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Container(
                        height: 510,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 3),
                            borderRadius:
                            const BorderRadius.all(Radius.circular(20))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(
                                  top: 25.0, left: 15, bottom: 20),
                              child: Text('Change Password',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 19,
                                      fontWeight: FontWeight.bold)),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 15, bottom: 15),
                              child: Text(
                                "Please enter a minimum 8-character password with at least 1 upper case, 1 lower case, and 1 special character",
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                            ABTextInput(
                              autoValidator: AutovalidateMode.onUserInteraction,
                              titleText: 'Old Password',
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter old password';
                                }
                                return null;
                              },
                              hintText: 'Enter Old Password',
                              isPassword: isObsecure,
                              suffix: IconButton(
                                icon: Icon(isObsecure
                                    ? Icons.visibility_off_outlined
                                    : Icons.visibility_outlined),
                                onPressed: () {
                                  setState(() {
                                    isObsecure = !isObsecure;
                                  });
                                },
                              ),
                            ),
                            ABTextInput(
                              autoValidator: AutovalidateMode.onUserInteraction,
                              titleText: 'New Password',
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter new password';
                                }
                                return null;
                              },
                              isPassword: isObsecure,
                              suffix: IconButton(
                                icon: Icon(isObsecure
                                    ? Icons.visibility_off_outlined
                                    : Icons.visibility_outlined),
                                onPressed: () {
                                  setState(() {
                                    isObsecure = !isObsecure;
                                  });
                                },
                              ),
                              hintText: 'Enter New Password',
                            ),
                            ABTextInput(
                              autoValidator: AutovalidateMode.onUserInteraction,
                              titleText: 'Confirm Password',
                              validator: (val) {
                                if (val == null || val.isEmpty) {
                                  return "Please Confirm passwod";
                                }
                                return null;
                              },
                              hintText: 'Enter New Password',
                              isPassword: isObsecure,
                              suffix: IconButton(
                                icon: Icon(isObsecure
                                    ? Icons.visibility_off_outlined
                                    : Icons.visibility_outlined),
                                onPressed: () {
                                  setState(() {
                                    isObsecure = !isObsecure;
                                  });
                                },
                              ),
                            ),
                            ABButton(
                              paddingTop:
                              MediaQuery.of(context).size.height * 0.0225,
                              paddingBottom: 15.0,
                              paddingLeft: 16.0,
                              paddingRight: 16.0,
                              text: 'Update',
                              onPressed: () async {
                                if (_formKey.currentState!.validate()) {
                                  FocusManager.instance.primaryFocus?.unfocus();
                                  String userid=await PrefUtils.getUserId()??'';
                                  ref.watch(authenticationProvider).changePasswordAPI(
                                    context: context,
                                    userid:userid,
                                    OldPassword: oldpass.text,
                                    NewPassword: newpass.text,
                                  );
                                }
                                // myDialog3(context, AppImages.done, "Password Changed Successfully","Okay", bheight*0.4, twidth*0.4);
                                // Navigator.pushReplacement(
                                //     context,
                                //     MaterialPageRoute(
                                //       builder: (context) => const CommonWebView(url: 'https://abhayahospital.in/main/landing/1'),
                                //     ));
                                // ref.watch(authenticationProvider).loginAPI(
                                //   context: context,
                                //   userName: _userNameController.text,
                                //   password: _passwordController.text,
                                // );
                              },
                            )
                          ],
                        )),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
