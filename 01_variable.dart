void main() {
  /// final and const  are constant value

  // string
  final String company = "Test";
  print(company);

  print(company);

  String num1 = "20";
  int num2 = int.parse(num1);

  //int
  int number = 20;
  print(num1 + company);
  print(num2 + number);

  print(number);

  // double
  double doub = 20.2;
  print(doub);

  // bool
  bool trueFalse = true;
  print(trueFalse);

  // collection
  List<String> ls = ["phyo", 'aung'];
  List<bool> ls_bl = [true, false];
  print(ls[0]);
  print(ls.length);
  print(ls);
  print(ls_bl);

  // map
  Map<String, String> mp = {"name": "phyo", "age": "20"};
  print(mp);
  print(mp["name"]);
  print(mp["age"]);
  print(mp.runtimeType);

  // nested list
  List<Map<String, String>> nestedList = [
    {"name": "phyo", "age": "20"},
    {"name": "aung", "age": "25"},
  ];

  print(nestedList[1]["age"]);
  print(2023 - int.parse(nestedList[1]['age']!));
  print(nestedList.runtimeType);
}
