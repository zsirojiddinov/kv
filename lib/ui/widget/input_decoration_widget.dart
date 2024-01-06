import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import '../../../style/text_style.dart';
import '../../style/colors.dart';
import '../../utils/dimens.dart';
import 'deceorations.dart';

class InputDecorationWidget extends StatelessWidget {
  TextEditingController controller;
  bool isActive;
  MaskTextInputFormatter mask;
  String hint;
  TextInputType inputType;
  Function onChange;
  FocusNode focusNode;

  InputDecorationWidget({
    Key? key,
    required this.controller,
    this.isActive = true,
    required this.mask,
    required this.hint,
    this.inputType = TextInputType.text,
    required this.onChange,
    required this.focusNode,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: homeDecoration5(
        isActive ? MyColor.backColor : MyColor.greys,
      ),
      child: TextField(
        enabled: isActive,
        keyboardType: inputType,
        textCapitalization: TextCapitalization.characters,
        inputFormatters: [mask],
        controller: controller,
        style: textStyle.copyWith(fontSize: Dimens.font12),
        textAlign: TextAlign.center,
        onChanged: (val) => onChange(val),
        focusNode: focusNode,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: hintStyle,
          alignLabelWithHint: false,
          border: InputBorder.none,
          floatingLabelBehavior: FloatingLabelBehavior.always,
        ),
      ),
    );
  }
}

class InputDecorationWidget2 extends StatelessWidget {
  TextEditingController controller;
  String hint;
  TextInputType inputType;
  bool isPassword;
  bool isCenter;

  InputDecorationWidget2({
    Key? key,
    required this.controller,
    required this.hint,
    this.inputType = TextInputType.text,
    this.isPassword = true,
    this.isCenter = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: editDecoration(),
      padding: EdgeInsets.only(left: isCenter ? 0 : Dimens.width10),
      child: TextField(
        obscureText: isPassword,
        keyboardType: inputType,
        textCapitalization: TextCapitalization.characters,
        controller: controller,
        style: textStyle,
        textAlign: isCenter ? TextAlign.center : TextAlign.start,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: hintStyle,
          alignLabelWithHint: false,
          border: InputBorder.none,
          floatingLabelBehavior: FloatingLabelBehavior.always,
        ),
      ),
    );
  }
}
