import 'package:flutter/material.dart';


class TextBtnWidget extends StatelessWidget {
  final String name;
  Color? btnColor;
  Color? nameColor;
  Color? textColor;
  Color? borderColor;
  VoidCallback onTap;
  bool isStretch;

  TextBtnWidget({required this.name, this.btnColor, this.nameColor, this.textColor,this.borderColor,required this.onTap, this.isStretch = true});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: isStretch ? CrossAxisAlignment.stretch : CrossAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: isStretch ? 20.0 : 0.0),
          child: TextButton(
              style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  side: BorderSide(color: borderColor ?? Colors.white),
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  backgroundColor: btnColor ?? Color.fromRGBO(68, 36, 119, 1),
                  foregroundColor: nameColor ?? Colors.black),
              onPressed: onTap,
              child: Text(name,style: TextStyle(color: textColor ?? Colors.white),)),
        ),
      ],
    );
  }
}
