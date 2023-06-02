import 'package:annapurna225/components/constants.dart';
import 'package:annapurna225/login/login_view.dart';
import 'package:annapurna225/splash/splash_view.dart';
import 'package:flutter/material.dart';
import '../../components/TextBtnWidget.dart';

class SplashData extends StatefulWidget {
  const SplashData({Key? key}) : super(key: key);

  @override
  State<SplashData> createState() => _SplashDataState();
}

class _SplashDataState extends State<SplashData> {
  int currentPage = 0;

  List splashData = ["assets/splash1.png", "assets/splash2.png"];

  static late MediaQueryData _mediaQueryData;
  static late double screenWidth;
  static late double screenHeight;

  @override
  Widget build(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    return SafeArea(
      child: Container(
        color: Colors.white,
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(splashData[index])),
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(155),
                          bottomRight: Radius.circular(155))),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: (20)),
                child: Column(
                  children: <Widget>[
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (index) => buildDot(index: index),
                      ),
                    ),
                    const Spacer(flex: 3),
                    (currentPage == 0)
                        ? TextButton(
                            onPressed: () {
                              Navigator.pushReplacement(context,
                                  MaterialPageRoute(
                                builder: (context) {
                                  return LoginView();
                                },
                              ));
                            },
                            child: Text("Skip",style: TextStyle(
                                color: kPrimaryColor
                            )),)
                        : TextBtnWidget(btnColor: Color.fromRGBO(68, 36, 119, 1),
                            isStretch: true,
                            name: 'Get Started',
                            onTap: () {
                              Navigator.pushReplacement(context,
                                  MaterialPageRoute(
                                builder: (context) {
                                  return LoginView();
                                },
                              ));
                            },
                          ),
                    Spacer()
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 900),
      margin: const EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index
            ? const Color.fromRGBO(68, 36, 119, 1)
            : const Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
