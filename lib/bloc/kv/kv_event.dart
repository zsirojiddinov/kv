import 'package:flutter/cupertino.dart';

@immutable
abstract class KvEvent {}

class SelectPayPersonEvent extends KvEvent {
  String pay;

  SelectPayPersonEvent(this.pay);
}

class ChangeCheckBoxEvent extends KvEvent {
  String val;
  bool isCheck;

  ChangeCheckBoxEvent(this.val, this.isCheck);
}

class HisoblaEvent extends KvEvent {}
class PrintEvent extends KvEvent {}
