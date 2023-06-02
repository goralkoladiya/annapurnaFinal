import 'package:flutter/material.dart';

import 'MyBoxWidget.dart';
import 'constants.dart';

class dropdown_widget extends StatelessWidget {

  final String name;
  final String? hint;
  final Color? filledColor;
  final List? data;
  Function(String?)? onChanged;
  final String? value;
  dropdown_widget(
      {
        required this.name,
        this.value,
        this.hint,
        this.filledColor,
        this.data,
        this.onChanged
      });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: defaultPadding),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  name,style: TextStyle(color: black,fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
        MyBoxWidget(
          height: 5,
        ),
        Container(
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: grey)
          ),
          child: InputDecorator(
            decoration:  InputDecoration(
                isDense: true,contentPadding: EdgeInsets.all(13),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(20), borderSide: BorderSide.none),
                // filled: true,
                // fillColor: filledColor ?? kPrimaryLightColor,
                fillColor: filledColor ?? kPrimaryLightColor.withOpacity(0.5),
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
                hintText: name,hintStyle: TextStyle(color: Colors.black)
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                isExpanded: true,
                focusColor:kPrimaryLightColor,
                borderRadius: BorderRadius.circular(20),
                value: value,hint: Text(hint ?? "",style: TextStyle(color: Colors.grey),),
                isDense: true,
                onChanged: onChanged,
                items: data!.map((value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value, overflow: TextOverflow.ellipsis, // default is .clip
                        maxLines: 2,),
                  );
                }).toList(),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
