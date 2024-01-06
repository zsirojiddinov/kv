import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:kv/ui/widget/button.dart';
import 'package:kv/ui/widget/deceorations.dart';
import 'package:kv/ui/widget/input_widget.dart';

import '../../../bloc/kv/kv_state.dart';
import '../bloc/kv/kv_bloc.dart';
import '../bloc/kv/kv_event.dart';
import '../style/colors.dart';
import '../style/text_style.dart';
import '../utils/dimens.dart';
import '../utils/masked.dart';

class KvPage extends StatelessWidget {
  late KvBloc bloc;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<KvBloc>(
      create: (ctx) => KvBloc(),
      child: Scaffold(
        appBar: AppBar(),
        body: BlocBuilder<KvBloc, KvState>(
          builder: (ctx, state) {
            bloc = BlocProvider.of<KvBloc>(ctx);
            return ui();
          },
        ),
      ),
    );
  }

  Widget ui() {
    return Container(
      color: Colors.grey,
      padding: EdgeInsets.all(10),
      child: ListView(
        children: [
          InputWidget(
            title: "title",
            controller: bloc.summaController,
            mask: Masked.maskInn,
            hint: "hint",
            focusNode: FocusNode(),
            inputType: TextInputType.number,
          ),
          _selectPayPerson(),
          checkBox(),
          Button(
              text: "add",
              onClick: () {
                bloc.add(HisoblaEvent());
              }),
          Text(
            "akbar ali : ${bloc.akbarali}\n"
            "avaz : ${bloc.avaz}\n"
            "davron : ${bloc.davron}\n"
            "qobiljon : ${bloc.qobiljon}\n"
            "usmonjon : ${bloc.usmonjon}\n"
            "diyor : ${bloc.diyor}\n"
            "farrux : ${bloc.farrux}\n"
            "ziyoviddin : ${bloc.ziyoviddin}\n",
          )
        ],
      ),
    );
  }

  _selectPayPerson() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: Dimens.width20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Gap(Dimens.height10),
          Text(
            "select pay person",
            style: titleStyle.copyWith(fontWeight: FontWeight.w800),
          ),
          Gap(Dimens.height10),
          GestureDetector(
            onTap: () => openSelectCity(),
            child: selecterItem(bloc.payPerson),
          ),
        ],
      ),
    );
  }

  selecterItem(String text) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: Dimens.height10,
        horizontal: Dimens.height10,
      ),
      decoration: editDecoration(),
      child: Row(
        children: [
          Text(
            text,
            style: textStyle,
          ),
          const Spacer(),
          Icon(
            Icons.keyboard_arrow_down_rounded,
            color: MyColor.greenPro,
          ),
        ],
      ),
    );
  }

  void openSelectCity() {
    Get.bottomSheet(
      Container(
        height: Dimens.screenHeight,
        color: MyColor.backColor,
        // decoration: boottomShetDecoration(),
        padding: EdgeInsets.all(Dimens.height20),
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                Get.back();
                bloc.add(SelectPayPersonEvent(bloc.AkbarAli));
              },
              child: Text(
                bloc.AkbarAli,
                style: textStyle,
              ),
            ),
            TextButton(
              onPressed: () {
                Get.back();
                bloc.add(SelectPayPersonEvent(bloc.Avaz));
              },
              child: Text(
                bloc.Avaz,
                style: textStyle,
              ),
            ),
            TextButton(
              onPressed: () {
                Get.back();
                bloc.add(SelectPayPersonEvent(bloc.Davron));
              },
              child: Text(
                bloc.Davron,
                style: textStyle,
              ),
            ),
            TextButton(
              onPressed: () {
                Get.back();
                bloc.add(SelectPayPersonEvent(bloc.Qobiljon));
              },
              child: Text(
                bloc.Qobiljon,
                style: textStyle,
              ),
            ),
            TextButton(
              onPressed: () {
                Get.back();
                bloc.add(SelectPayPersonEvent(bloc.Usmonjon));
              },
              child: Text(
                bloc.Usmonjon,
                style: textStyle,
              ),
            ),
            TextButton(
              onPressed: () {
                Get.back();
                bloc.add(SelectPayPersonEvent(bloc.Diyor));
              },
              child: Text(
                bloc.Diyor,
                style: textStyle,
              ),
            ),
            TextButton(
              onPressed: () {
                Get.back();
                bloc.add(SelectPayPersonEvent(bloc.Farrux));
              },
              child: Text(
                bloc.Farrux,
                style: textStyle,
              ),
            ),
            TextButton(
              onPressed: () {
                Get.back();
                bloc.add(SelectPayPersonEvent(bloc.Ziyoviddin));
              },
              child: Text(
                bloc.Ziyoviddin,
                style: textStyle,
              ),
            ),
          ],
        ),
      ),
    );
  }

  checkBox() {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
                flex: 7,
                child: Text(
                  bloc.AkbarAli,
                  style: textStyle,
                )),
            Expanded(
              flex: 1,
              child: Checkbox(
                value: bloc.listCheckBox.contains(bloc.AkbarAli),
                onChanged: (val) {
                  bloc.add(ChangeCheckBoxEvent(bloc.AkbarAli,
                      bloc.listCheckBox.contains(bloc.AkbarAli)));
                },
              ),
            )
          ],
        ),
        Row(
          children: [
            Expanded(
                flex: 7,
                child: Text(
                  bloc.Avaz,
                  style: textStyle,
                )),
            Expanded(
              flex: 1,
              child: Checkbox(
                value: bloc.listCheckBox.contains(bloc.Avaz),
                onChanged: (val) {
                  bloc.add(ChangeCheckBoxEvent(
                      bloc.Avaz, bloc.listCheckBox.contains(bloc.Avaz)));
                },
              ),
            )
          ],
        ),
        Row(
          children: [
            Expanded(
                flex: 7,
                child: Text(
                  bloc.Qobiljon,
                  style: textStyle,
                )),
            Expanded(
              flex: 1,
              child: Checkbox(
                value: bloc.listCheckBox.contains(bloc.Qobiljon),
                onChanged: (val) {
                  bloc.add(ChangeCheckBoxEvent(bloc.Qobiljon,
                      bloc.listCheckBox.contains(bloc.Qobiljon)));
                },
              ),
            )
          ],
        ),
        Row(
          children: [
            Expanded(
                flex: 7,
                child: Text(
                  bloc.Davron,
                  style: textStyle,
                )),
            Expanded(
              flex: 1,
              child: Checkbox(
                value: bloc.listCheckBox.contains(bloc.Davron),
                onChanged: (val) {
                  bloc.add(ChangeCheckBoxEvent(
                      bloc.Davron, bloc.listCheckBox.contains(bloc.Davron)));
                },
              ),
            )
          ],
        ),
        Row(
          children: [
            Expanded(
                flex: 7,
                child: Text(
                  bloc.Usmonjon,
                  style: textStyle,
                )),
            Expanded(
              flex: 1,
              child: Checkbox(
                value: bloc.listCheckBox.contains(bloc.Usmonjon),
                onChanged: (val) {
                  bloc.add(ChangeCheckBoxEvent(bloc.Usmonjon,
                      bloc.listCheckBox.contains(bloc.Usmonjon)));
                },
              ),
            )
          ],
        ),
        Row(
          children: [
            Expanded(
                flex: 7,
                child: Text(
                  bloc.Diyor,
                  style: textStyle,
                )),
            Expanded(
              flex: 1,
              child: Checkbox(
                value: bloc.listCheckBox.contains(bloc.Diyor),
                onChanged: (val) {
                  bloc.add(ChangeCheckBoxEvent(
                      bloc.Diyor, bloc.listCheckBox.contains(bloc.Diyor)));
                },
              ),
            )
          ],
        ),
        Row(
          children: [
            Expanded(
                flex: 7,
                child: Text(
                  bloc.Farrux,
                  style: textStyle,
                )),
            Expanded(
              flex: 1,
              child: Checkbox(
                value: bloc.listCheckBox.contains(bloc.Farrux),
                onChanged: (val) {
                  bloc.add(ChangeCheckBoxEvent(
                      bloc.Farrux, bloc.listCheckBox.contains(bloc.Farrux)));
                },
              ),
            )
          ],
        ),
        Row(
          children: [
            Expanded(
                flex: 7,
                child: Text(
                  bloc.Ziyoviddin,
                  style: textStyle,
                )),
            Expanded(
              flex: 1,
              child: Checkbox(
                value: bloc.listCheckBox.contains(bloc.Ziyoviddin),
                onChanged: (val) {
                  bloc.add(ChangeCheckBoxEvent(bloc.Ziyoviddin,
                      bloc.listCheckBox.contains(bloc.Ziyoviddin)));
                },
              ),
            )
          ],
        ),
      ],
    );
  }
}
