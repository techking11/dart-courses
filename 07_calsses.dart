class Phone {
  final String name;
  int price;
  int? storage;
  late int _ram;

  Phone({required String this.name, required int this.price, int? storage}) {
    _ram = 500000 - price;
  }
  
  void storge() {
    print('$name has ${storage ?? 128}gb');
  }

  void setRam(int value) {
    price = value;
  }

  int getRam() {
    return _ram;
  }
}
