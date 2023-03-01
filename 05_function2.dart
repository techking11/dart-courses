void main() {
  final Map<String, List<String>> firstload = {
    "Boot1": ["Window"],
    "Boot2": ["Ubuntu"]
  };
  void Boot({required String system}) {
    bool check = false;

    firstload.forEach((key, value) {
      if (system == key) {
        String system1 = "";
        for (var item in value) {
          system1 += item + ",";
        }
        print("You are using now  $system1");
        check = true;
      }
    });
    check ? "" : print("You are using now Mac system ");
  }

  Boot(system: 'Boot1');
}
