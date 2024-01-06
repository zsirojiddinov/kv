import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kv/models/kv_models.dart';

import 'kv_event.dart';
import 'kv_state.dart';

class KvBloc extends Bloc<KvEvent, KvState> {
  var listUser = <KvUser>[];
  var listCheckBox = <KvUser>[];

  String AkbarAli = "AkbarAli";
  String Avaz = "Avaz";
  String Diyor = "Diyor";
  String Davron = "Davron";
  String Usmonjon = "Usmonjon";
  String Qobiljon = "Qobiljon";
  String Ziyoviddin = "Ziyoviddin";
  String Farrux = "Farrux";

  double akbarali = 0;
  double avaz = 0;
  double davron = 0;
  double qobiljon = 0;
  double usmonjon = 0;
  double diyor = 0;
  double farrux = 0;
  double ziyoviddin = 0;

  late String payPerson;

  var summaController = TextEditingController();

  KvBloc() : super(SuccesState()) {
    listUser = [
      KvUser(name: AkbarAli),
      KvUser(name: Avaz),
      KvUser(name: Davron),
      KvUser(name: Qobiljon),
      KvUser(name: Usmonjon),
      KvUser(name: Diyor),
      KvUser(name: Farrux),
      KvUser(name: Ziyoviddin),
    ];
    listCheckBox = [
      KvUser(name: AkbarAli),
      KvUser(name: Avaz),
      KvUser(name: Davron),
      KvUser(name: Qobiljon),
      KvUser(name: Usmonjon),
      KvUser(name: Diyor),
      // KvUser(name: Farrux),
      KvUser(name: Ziyoviddin),
    ];

    payPerson = AkbarAli;

    on<SelectPayPersonEvent>(pay);
    on<ChangeCheckBoxEvent>(change);
    on<HisoblaEvent>(hisobla);
  }

  FutureOr<void> pay(SelectPayPersonEvent event, Emitter<KvState> emit) {
    payPerson = event.pay;
    emit(SuccesState());
  }

  FutureOr<void> change(ChangeCheckBoxEvent event, Emitter<KvState> emit) {
    if (event.isCheck) {
      listCheckBox.remove(event.val);
    } else {
      listCheckBox.add(event.val);
    }

    emit(SuccesState());
  }

  hisobla(HisoblaEvent event, Emitter<KvState> emit) {
    var summa = summaController.text.toString();
    summa = summa.replaceAll(" ", "");
    payPerson;
    listCheckBox;

    if (summa == "") {
      emit(SuccesState());
      return;
    }
    if (listCheckBox.length < 2) {
      emit(SuccesState());
      return;
    }

    if (payPerson == AkbarAli) {
      double a = getPayPersonSumma(summa, listCheckBox.length); // a=18;
      double b = getPaySumma(summa, listCheckBox.length); // b=3;
      akbarali = akbarali + a;
      if (listCheckBox.contains(Avaz)) {
        avaz = avaz - b;
      }
      if (listCheckBox.contains(Davron)) {
        davron = davron - b;
      }

      if (listCheckBox.contains(Qobiljon)) {
        qobiljon = qobiljon - b;
      }
      if (listCheckBox.contains(Usmonjon)) {
        usmonjon = usmonjon - b;
      }

      if (listCheckBox.contains(Diyor)) {
        diyor = diyor - b;
      }

      if (listCheckBox.contains(Farrux)) {
        farrux = farrux - b;
      }

      if (listCheckBox.contains(Ziyoviddin)) {
        ziyoviddin = ziyoviddin - b;
      }
    }

    if (payPerson == Avaz) {
      double a = getPayPersonSumma(summa, listCheckBox.length); // a=18;
      double b = getPaySumma(summa, listCheckBox.length); // b=3;
      avaz = avaz + a;
      if (listCheckBox.contains(AkbarAli)) {
        akbarali = akbarali - b;
      }
      if (listCheckBox.contains(Davron)) {
        davron = davron - b;
      }

      if (listCheckBox.contains(Qobiljon)) {
        qobiljon = qobiljon - b;
      }
      if (listCheckBox.contains(Usmonjon)) {
        usmonjon = usmonjon - b;
      }

      if (listCheckBox.contains(Diyor)) {
        diyor = diyor - b;
      }

      if (listCheckBox.contains(Farrux)) {
        farrux = farrux - b;
      }

      if (listCheckBox.contains(Ziyoviddin)) {
        ziyoviddin = ziyoviddin - b;
      }
    }

    if (payPerson == Davron) {
      double a = getPayPersonSumma(summa, listCheckBox.length); // a=18;
      double b = getPaySumma(summa, listCheckBox.length); // b=3;
      davron = davron + a;
      if (listCheckBox.contains(Avaz)) {
        avaz = avaz - b;
      }
      if (listCheckBox.contains(AkbarAli)) {
        akbarali = akbarali - b;
      }

      if (listCheckBox.contains(Qobiljon)) {
        qobiljon = qobiljon - b;
      }
      if (listCheckBox.contains(Usmonjon)) {
        usmonjon = usmonjon - b;
      }

      if (listCheckBox.contains(Diyor)) {
        diyor = diyor - b;
      }

      if (listCheckBox.contains(Farrux)) {
        farrux = farrux - b;
      }

      if (listCheckBox.contains(Ziyoviddin)) {
        ziyoviddin = ziyoviddin - b;
      }
    }

    if (payPerson == Qobiljon) {
      double a = getPayPersonSumma(summa, listCheckBox.length); // a=18;
      double b = getPaySumma(summa, listCheckBox.length); // b=3;
      qobiljon = qobiljon + a;
      if (listCheckBox.contains(Avaz)) {
        avaz = avaz - b;
      }
      if (listCheckBox.contains(Davron)) {
        davron = davron - b;
      }

      if (listCheckBox.contains(AkbarAli)) {
        akbarali = akbarali - b;
      }
      if (listCheckBox.contains(Usmonjon)) {
        usmonjon = usmonjon - b;
      }

      if (listCheckBox.contains(Diyor)) {
        diyor = diyor - b;
      }

      if (listCheckBox.contains(Farrux)) {
        farrux = farrux - b;
      }

      if (listCheckBox.contains(Ziyoviddin)) {
        ziyoviddin = ziyoviddin - b;
      }
    }

    if (payPerson == Usmonjon) {
      double a = getPayPersonSumma(summa, listCheckBox.length); // a=18;
      double b = getPaySumma(summa, listCheckBox.length); // b=3;
      usmonjon = usmonjon + a;
      if (listCheckBox.contains(Avaz)) {
        avaz = avaz - b;
      }
      if (listCheckBox.contains(Davron)) {
        davron = davron - b;
      }

      if (listCheckBox.contains(Qobiljon)) {
        qobiljon = qobiljon - b;
      }
      if (listCheckBox.contains(AkbarAli)) {
        akbarali = akbarali - b;
      }

      if (listCheckBox.contains(Diyor)) {
        diyor = diyor - b;
      }

      if (listCheckBox.contains(Farrux)) {
        farrux = farrux - b;
      }

      if (listCheckBox.contains(Ziyoviddin)) {
        ziyoviddin = ziyoviddin - b;
      }
    }

    if (payPerson == Diyor) {
      double a = getPayPersonSumma(summa, listCheckBox.length); // a=18;
      double b = getPaySumma(summa, listCheckBox.length); // b=3;
      diyor = diyor + a;
      if (listCheckBox.contains(Avaz)) {
        avaz = avaz - b;
      }
      if (listCheckBox.contains(Davron)) {
        davron = davron - b;
      }

      if (listCheckBox.contains(Qobiljon)) {
        qobiljon = qobiljon - b;
      }
      if (listCheckBox.contains(Usmonjon)) {
        usmonjon = usmonjon - b;
      }

      if (listCheckBox.contains(AkbarAli)) {
        akbarali = akbarali - b;
      }

      if (listCheckBox.contains(Farrux)) {
        farrux = farrux - b;
      }

      if (listCheckBox.contains(Ziyoviddin)) {
        ziyoviddin = ziyoviddin - b;
      }
    }

    if (payPerson == Farrux) {
      double a = getPayPersonSumma(summa, listCheckBox.length); // a=18;
      double b = getPaySumma(summa, listCheckBox.length); // b=3;
      farrux = farrux + a;
      if (listCheckBox.contains(Avaz)) {
        avaz = avaz - b;
      }
      if (listCheckBox.contains(Davron)) {
        davron = davron - b;
      }

      if (listCheckBox.contains(Qobiljon)) {
        qobiljon = qobiljon - b;
      }
      if (listCheckBox.contains(Usmonjon)) {
        usmonjon = usmonjon - b;
      }

      if (listCheckBox.contains(Diyor)) {
        diyor = diyor - b;
      }

      if (listCheckBox.contains(AkbarAli)) {
        akbarali = akbarali - b;
      }

      if (listCheckBox.contains(Ziyoviddin)) {
        ziyoviddin = ziyoviddin - b;
      }
    }

    if (payPerson == Ziyoviddin) {
      double a = getPayPersonSumma(summa, listCheckBox.length); // a=18;
      print(a);
      double b = getPaySumma(summa, listCheckBox.length); // b=3;
      print(b);
      ziyoviddin = ziyoviddin + a;
      print(ziyoviddin);
      if (listCheckBox.contains(Avaz)) {
        avaz = avaz - b;
      }
      if (listCheckBox.contains(Davron)) {
        davron = davron - b;
      }

      if (listCheckBox.contains(Qobiljon)) {
        qobiljon = qobiljon - b;
      }
      if (listCheckBox.contains(Usmonjon)) {
        usmonjon = usmonjon - b;
      }

      if (listCheckBox.contains(Diyor)) {
        diyor = diyor - b;
      }

      if (listCheckBox.contains(Farrux)) {
        farrux = farrux - b;
      }

      if (listCheckBox.contains(AkbarAli)) {
        akbarali = akbarali - b;
      }
    }

    summaController.text = "";
    emit(SuccesState());
  }

  double getPayPersonSumma(String summa, int len) {
    return double.parse(summa) * (len - 1) / len;
  }

  double getPaySumma(String summa, int len) {
    return double.parse(summa) / len;
  }
}
