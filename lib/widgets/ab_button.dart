import 'package:annapurna225/components/constants.dart';
import 'package:flutter/material.dart';

class ABButton extends StatelessWidget {
  final Function()? onPressed;
  final String? text;
  final double? paddingTop;
  final double? paddingBottom;
  final double? paddingLeft;
  final double? paddingRight;
  final double? size;
  final Color? btnColor;
  final Color? textColor;

  const ABButton({
    Key? key,
    required this.onPressed,
    this.text,
    this.paddingTop,
    this.paddingBottom,
    this.paddingLeft,
    this.paddingRight,
    this.size,
    this.btnColor,
    this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: paddingTop!,
          bottom: paddingBottom!,
          left: paddingLeft!,
          right: paddingRight!),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: textColor??white,
          backgroundColor: btnColor??kPrimaryColor,
          minimumSize: Size(MediaQuery.of(context).size.width,
              MediaQuery.of(context).size.height * 0.055),
          shape: RoundedRectangleBorder(side: onPressed!=null?BorderSide(color: kPrimaryColor):BorderSide.none,
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
        ),
        onPressed: onPressed!=null?onPressed:null,
        child: Text(text!,
            style: TextStyle(
                fontSize: size??16,
                fontWeight: FontWeight.w700)),
      ),
    );
  }
}
