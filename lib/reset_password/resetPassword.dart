import 'package:annapurna225/AppImages.dart';
import 'package:flutter/material.dart';

import '../widgets/ab_button.dart';
import '../widgets/ab_text_input.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  final _newPassController = TextEditingController();
  final _confirmPassController = TextEditingController();
  bool _isObscure1 = true;
  bool _isObscure2 = true;



  @override
  Widget build(BuildContext context) {
    double theight = MediaQuery.of(context).size.height;
    double twidht = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SizedBox(
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
                      height: 450,
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
                            child: Text('Reset Password',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold)),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 15, bottom: 15),
                            child: Text(
                              "Please enter a minimum 8-character password with at least 1 upper case, 1 lower case and 1 special character ",
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                          ABTextInput(
                            autoValidator: AutovalidateMode.onUserInteraction,
                            titleText: 'New Password',
                            isPassword: _isObscure1,
                            suffix: IconButton(
                              icon: Icon(_isObscure1
                                  ? Icons.visibility_off_outlined
                                  : Icons.visibility_outlined),
                              onPressed: () {
                                setState(() {
                                  _isObscure1 = !_isObscure1;
                                });
                              },
                            ),
                            validator: (value) {
                              RegExp regex = RegExp(
                                  r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
                              if (value == null || value.isEmpty) {
                                return 'Please enter password';
                              } else if (!regex.hasMatch(value)) {
                                return 'Please enter valid password';
                              }
                              return null;
                            },
                            controller: _newPassController,
                            hintText: 'Enter New Password',
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: ABTextInput(
                              autoValidator: AutovalidateMode.onUserInteraction,
                              titleText: 'Confirm Password',
                              isPassword: _isObscure2,
                              suffix: IconButton(
                                icon: Icon(_isObscure2
                                    ? Icons.visibility_off_outlined
                                    : Icons.visibility_outlined),
                                onPressed: () {
                                  setState(() {
                                    _isObscure2 = !_isObscure2;
                                  });
                                },
                              ),
                              validator: (value) {
                                RegExp regex = RegExp(
                                    r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
                                if (value == null || value.isEmpty) {
                                  return 'Please enter password';
                                } else if (!regex.hasMatch(value)) {
                                  return "Please enter valid password";
                                }
                                return null;
                              },
                              controller: _confirmPassController,
                              hintText: 'Enter Confirmed Password',
                            ),
                          ),
                          ABButton(
                            paddingTop:
                                MediaQuery.of(context).size.height * 0.0225,
                            paddingBottom: 15.0,
                            paddingLeft: 20.0,
                            paddingRight: 20.0,
                            text: 'Save Password',
                            onPressed: () {
                              if(_newPassController.text!=""&&_confirmPassController.text!="") {
                                if (_newPassController.text ==
                                    _confirmPassController.text) {
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      return Dialog(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                            BorderRadius.circular(20)),
                                        child: Container(
                                          height: theight * 0.3,
                                          width: twidht * 0.35,
                                          child: Column(
                                            mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Image.asset('assets/Done.png'),
                                              Center(child: Text(
                                                  "Your password has been updated successfully")),
                                              Row(
                                                children: [
                                                  Expanded(
                                                    child: Padding(
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                          horizontal: 15.0),
                                                      child: OutlinedButton(
                                                          onPressed: () {
                                                            Navigator.pop(
                                                                context);
                                                          },
                                                          child: Text("Okay")),
                                                    ),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                }
                              }
                              else
                                {
                                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Fill All The Fields")));
                                }

                              // ref.watch(authenticationProvider).loginAPI(
                              //   context: context,
                              //   userName: _userNameController.text,
                              //   password: _passwordController.text,
                              // );
                              // Navigator.pushReplacement(
                              //     context,
                              //     MaterialPageRoute(
                              //       builder: (context) => const CommonWebView(url: 'https://abhayahospital.in/main/landing/1'),
                              //     ));
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
    );
  }
}
