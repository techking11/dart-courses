import '07_calsses.dart';

void main() {
  // final car = Car(type: "toyota", speed: 200);
  final phone = Phone(name: "Redminote 10", price: 40000);
  final person = Person(pname: "mg mg", age: 30, phonenumber: '092345643');
  // print(car);
  // print(phone);
  // print(phone.name);
  // print(car.type);
  // print(car.speed);
  // car.drive();
  phone.storge();
  print(person.age);
  // person.setAge(20);
  print(person._dateofbirth);
  print(phone.getRam());
}

// class Car {
// final String type;
// int? speed;
// void drive() {
//   // print('this car is driving $speed');
//   print('this car is driving ${speed ?? 0}'); //null handling
// }

// Car({required String this.type, int? this.speed});

//   late String _type;
//   int? speed;
//   set settype(String value) {
//     _type = value;
//   }
//   get gettype(){
//     return _type;  }

//   void drive() {
//     // print('this car is driving $speed');
//     print('this car is driving ${speed ?? 0}'); //null handling
//   }

//   Car({required String this.type, int? this.speed});
// }

class Person {
  final String pname;
  int age;
  late int _dateofbirth;
  final String phonenumber;

  Person(
      {required String this.pname,
      required int this.age,
      required this.phonenumber}) {
    _dateofbirth = DateTime.now().year - age;
  }

  void setAge(int value) {
    age = value;
    _dateofbirth = DateTime.now().year - age;
  }
}
