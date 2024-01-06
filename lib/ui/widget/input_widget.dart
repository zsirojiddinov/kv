import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import '../../../style/text_style.dart';
import '../../../utils/dimens.dart';
import 'input_decoration_widget.dart';

class InputWidget extends StatelessWidget {
  String? title;
  TextEditingController controller;
  bool isActive;
  MaskTextInputFormatter mask;
  String hint;
  TextInputType inputType;
  Function onChange;
  FocusNode focusNode;
  Color titleColor;

  InputWidget({
    Key? key,
    required this.title,
    required this.controller,
    this.isActive = true,
    required this.mask,
    required this.hint,
    this.inputType = TextInputType.text,
    this.onChange = func,
    required this.focusNode,
    this.titleColor = Colors.black,
  }) : super(key: key);

  static func(String val) {
    print(val);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        title != null
            ? Container(
                padding: EdgeInsets.only(left: Dimens.width10),
                child: Text(
                  title!,
                  style: descriptionStyle.copyWith(color: titleColor),
                ),
              )
            : Container(),
        Gap(Dimens.height10 / 2),
        InputDecorationWidget(
          controller: controller,
          mask: mask,
          hint: hint,
          isActive: isActive,
          inputType: inputType,
          onChange: (val) => onChange(val),
          focusNode: focusNode,
        )
      ],
    );
  }
}

class InputWidget2 extends StatelessWidget {
  String? title;
  TextEditingController controller;
  String hint;
  TextInputType inputType;
  bool isPassword;
  Color titleColor;
  bool isCenter;

  InputWidget2({
    Key? key,
    required this.title,
    required this.controller,
    required this.hint,
    this.inputType = TextInputType.text,
    this.isPassword = true,
    this.titleColor = Colors.black,
    this.isCenter = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          title != null
              ? Container(
                  padding: EdgeInsets.only(left: Dimens.width10),
                  child: Text(
                    title!,
                    style: descriptionStyle.copyWith(color: titleColor),
                  ),
                )
              : Container(),
          Gap(Dimens.height10 / 2),
          InputDecorationWidget2(
            controller: controller,
            hint: hint,
            inputType: inputType,
            isPassword: isPassword,
            isCenter: isCenter,
          )
        ],
      ),
    );
  }
}
