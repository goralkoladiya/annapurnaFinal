import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'MyBoxWidget.dart';
import 'constants.dart';

class TextFieldWidget extends StatelessWidget {
  final TextEditingController controller;
  final String name;
  final Function()? onIconPres;
  final int maxLines;
  final bool isObscured;
  final bool isRequired;
  final TextInputType textInputType;
  final Color? filledColor;
  Function? validator;
  final IconData? myIcon;
  final List<TextInputFormatter>? text;

  TextFieldWidget(
      {required this.controller,
      required this.name,
      this.onIconPres,
      this.maxLines = 1,
      this.isRequired = true,
      this.isObscured = false,
      this.textInputType = TextInputType.text,
      this.filledColor,
      this.validator,
      this.myIcon,
      this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 3),
          child: Row(
            children: [
              Text(
                name,
                style: TextStyle(color: black, fontWeight: FontWeight.bold),),
              if (isRequired)
                const Padding(
                  padding: EdgeInsets.only(left: 2.0),
                  child: Text(
                    '*',
                    style: TextStyle(color: kPrimaryColor, fontSize: 18),
                  ),
                )
            ],
          ),
        ),
        MyBoxWidget(
          height: 5,
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
            border: Border.all(color: grey),
            borderRadius: BorderRadius.circular(10)
          ),

          // padding:  EdgeInsets.symmetric(vertical: defaultPadding),
          child: TextFormField(
            inputFormatters: text,
            validator: validator == null
                ? (value) {
                    if (validator == null || validator!() == null) {
                      if ((value == null || value.isEmpty) && isRequired) {
                        return 'Please enter some text';
                      }
                      return null;
                    }
                    return null;
                  }
                : (value) {
                    return validator!();
                  },
            cursorColor: kPrimaryColor,
            controller: controller,
            obscureText: isObscured,
            keyboardType: textInputType,

            decoration: InputDecoration(
              isDense: true,
              suffixIcon: IconButton(onPressed: onIconPres, icon: Icon(myIcon as IconData?,size: 25,color: kPrimaryColor)),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none),
              filled: true,
              fillColor: filledColor ?? white,
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(
                  color: Colors.red,
                ),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(
                  color: Colors.red,
                ),
              ),
              hintText: name,hintStyle: TextStyle(color: grey)
              // labelText: name
            ),
            // cursorColor: baseColor,
            showCursor: true,
            maxLines: maxLines,
          ),
        ),
        MyBoxWidget(
          height: 2,
        ),
      ],
    );
  }
}
