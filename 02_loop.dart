void main() {
  List<String> ls = ["aung", "phyo", "zaw"];
  List<int> ls1 = [20, 25, 30];

  ls.map((e) => print(e));

  print(ls1.map((e) => e * 2).toList());

  ls.add("value");
  print(ls);

  ls.addAll(["s", 't', 'r']);
  print(ls);

  // for (var i = 0; i < ls.length; i++) {
  //   print(ls[i]);
  // }

  // for (var item in ls) {
  //   print(item);
  // }

  for (var item in ls) {
    // if (item == "aung") {
    //   print("Your name is aung aung and your age is 20");
    // } else if (item == "phyo") {
    //   print("Your name is phyo aung and your age is 25");
    // }

    item == "aung"
        ? print("Your name is aung aung and your age is 20")
        : item == "phyo"
            ? print("Your name is phyo aung and your age is 25")
            : print('none');
  }

  // // nested map
  // Map mp = {
  //   "name": ["aung", "htet", 'zaw'],
  //   "phone": ["Samsung", "Huawei", "iPhone"]
  // };

  // mp.entries.map((e) => print(e));
  // mp.forEach((key, value) {
  //   if (key == "name") {
  //     print(value);
  //   }
  // });
}
