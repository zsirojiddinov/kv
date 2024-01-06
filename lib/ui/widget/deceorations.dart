import 'package:flutter/material.dart';

import '../../../style/colors.dart';
import '../../../utils/dimens.dart';

BoxDecoration buyPolicyDecoration() {
  return BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(Dimens.height15),
  );
}

BoxDecoration valyutaDecoration() {
  return BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(Dimens.height20),
  );
}

BoxDecoration simpleDecoration() {
  return BoxDecoration(
    color: Colors.grey.shade200,
    borderRadius: BorderRadius.circular(Dimens.height10),
  );
}

BoxDecoration mainBlackDecoration() {
  return BoxDecoration(
    color: MyColor.backColor,
    borderRadius: BorderRadius.circular(Dimens.height10 / 2),
    border: Border.all(color: MyColor.newBlack, width: 1),
  );
}

BoxDecoration mainWhiteDecoration() {
  return BoxDecoration(
    color: MyColor.backColor,
    borderRadius: BorderRadius.circular(Dimens.height10 / 2),
    border: Border.all(color: MyColor.backColor, width: 1),
  );
}

editDecoration() {
  return BoxDecoration(
    color: MyColor.backColor,
    borderRadius: BorderRadius.circular(Dimens.radius10),
    border: Border.all(
      color: MyColor.greenPro,
      width: Dimens.height10 / 10,
    ),
  );
}

buttonDecoration() {
  return BoxDecoration(
    color: MyColor.greenPro,
    borderRadius: BorderRadius.circular(Dimens.height10 / 2),
    //  border: Border.all(color: MyColor.mainColor),
  );
}

BoxDecoration boottomShetDecoration() {
  return BoxDecoration(
    color: MyColor.bluePro,
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(Dimens.height20),
      topRight: Radius.circular(Dimens.height20),
    ),
  );
}

BoxDecoration homeDecoration() {
  return BoxDecoration(
    color: MyColor.bluePro,
    borderRadius: BorderRadius.only(
      bottomLeft: Radius.circular(Dimens.height20),
      bottomRight: Radius.circular(Dimens.height20),
    ),
  );
}

BoxDecoration homeDecoration2(Color color) {
  return BoxDecoration(
    color: color,
    borderRadius: BorderRadius.only(
      topRight: Radius.circular(Dimens.height20),
      topLeft: Radius.circular(Dimens.height20),
    ),
  );
}

BoxDecoration homeDecoration3(Color color) {
  return BoxDecoration(
    color: color,
    borderRadius: BorderRadius.only(
      bottomRight: Radius.circular(Dimens.height20),
      bottomLeft: Radius.circular(Dimens.height20),
    ),
  );
}

BoxDecoration homeDecoration4(Color color) {
  return BoxDecoration(
    color: color,
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(Dimens.height20),
      topRight: Radius.circular(Dimens.height20),
      bottomLeft: Radius.circular(Dimens.height20),
      bottomRight: Radius.circular(Dimens.height20),
    ),
  );
}

BoxDecoration homeDecoration5(
  Color color, {
  double radius = -1,
}) {
  return BoxDecoration(
    color: color,
    borderRadius: BorderRadius.all(
      Radius.circular(radius == -1 ? Dimens.radius10 : radius),
    ),
  );
}

BoxDecoration boottomShetWidgetDecoration() {
  return BoxDecoration(
    color: Colors.grey,
    borderRadius: BorderRadius.circular(Dimens.height10),
  );
}

BoxDecoration sosItemDecoration() {
  return BoxDecoration(
    color: MyColor.bluePro,
    border: Border.all(color: MyColor.bluePro, width: 0.7),
    borderRadius: BorderRadius.circular(Dimens.height10),
  );
}
