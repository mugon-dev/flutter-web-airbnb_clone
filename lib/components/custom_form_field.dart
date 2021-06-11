import 'package:flutter/material.dart';

import '../constants.dart';

class CustomFormField extends StatelessWidget {
  final prefixText;
  final hintText;
  final hasDropdow;
  const CustomFormField(
    this.prefixText,
    this.hintText, {
    Key? key,
    this.hasDropdow = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        TextFormField(
          textAlignVertical: TextAlignVertical.bottom,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(top: 30, left: 20, bottom: 10),
            hintText: hintText,
            suffixIcon: hasDropdow
                ? Container(
                    width: 50,
                    height: 50,
                    alignment: Alignment(0.0, 1.0),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.keyboard_arrow_down),
                    ),
                  )
                : SizedBox(),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: Colors.black,
                width: 2,
              ),
            ),
          ),
        ),
        Positioned(
          left: 20,
          top: 8,
          child: Text(
            prefixText,
            style: kTextFormBody2Style,
          ),
        ),
      ],
    );
  }
}
