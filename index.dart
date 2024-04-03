import 'dart:io';

List<String> pers = [
  "Tech King",
  "Sittwe",
  "Arakanese",
  "Myanmar"
]; // array in dart

Map<String, List<String>> locations = {
  // object in dart
  "country": ["United States", "Australia"],
  "city": ["New York", "Okalahoma"],
  "age": ["20", "45"]
};

void main() {
  // no parameter void fun in dart
  // String bios = info(age: 22, name: "Justin Myo");
  // stdout.write("Please enter a country: ");
  // String? country = stdin.readLineSync();
  // locate(country);
 out();

  // calculator(one: 1, two: 3.4, three: "3", four: "4", sunday: false, location: "Arakan");
}

void locate(country) {
  print("--------------------------------");
  locations.forEach((key, value) {
    if (key == country) {
      for (int i = 0; i < value.length; i++) {
        print(value[i]);
      }
    }
    switch (key) {
      case "city":
        for (String val in value) {
          print(val);
        }
        break;
      default:
        break;
    }

    key == "age" ? value.map((e) => print(e)) : "";
  });
  print("--------------------------------");
}

String info({required int age, required String name}) {
  // return parameter fun in dart
  return "Name is $name.\nAge is $age.";
}

void calculator(
    {required int one,
    required double two,
    required var three,
    required dynamic four,
    required bool sunday,
    required String location}) {
  print(
      "One - $one\nTwo - $two\nTwo - $three\nFour - $four\nSunday - $sunday\nLocation - $location");
}
void out(){
   stdout.write("Please enter the first value: ");
  var first = int.tryParse(stdin.readLineSync().toString())!;
  print(first.runtimeType);
  if (first != null) {
    stdout.write("Please enter the second value: ");
    var sec = int.tryParse(stdin.readLineSync().toString())!;
    print(sec);
    if (sec != null) {
      stdout.write("Please choose your operator: ");
      var third = stdin.readLineSync().toString();
      print(third);
      if (third != null) {
        // var sum = first + sec;
        // print("total is $sum");
        cal(first, sec, third);
      }
    }
  }
}
void cal(
  int fs,
  int sec,
  String op,
) {
  var data;
 if(op == "sum"){
data=fs+sec;
print(data);
stdout.write("Do you want to continue (Y/N): ");
  var val = stdin.readLineSync().toString();
  // print(first.runtimeType);
  if(val == "Y"){
    out(); 
     
  }else if(val == "N"){
    print("Thannks ......");
  }

 }else if(op == "minus"){
  
data=fs - sec;
print(data);
 }
}

void calc({
  required int first_val,
  required int second_val,
  required String opt,
}) {
  stdout.write("Please enter the first value: ");
  // var data=stdin.readLineSync();
  first_val = int.tryParse(stdin.readLineSync().toString())!;
  print(first_val);
}
