class KvUser {
  String name;
  double sum;

  KvUser({
    this.name = "",
    this.sum = 0,
  });
}

class HistoryModel {
  String user;
  double sum;
  List<KvUser> payPerson;

  HistoryModel({
    required this.user,
    required this.sum,
    required this.payPerson,
  });
}
