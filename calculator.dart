import 'dart:io';

int total_number = 0;
int? next_number = 0;
void main() {
  print("| Welcome From Calculator App.");
  print("---------------------------------------------------------------- \n");
  calculator();
}

void calculator() {
  
  stdout.write("| Please enter the first number : ");
  int? first_num = int.tryParse(stdin.readLineSync().toString());
  if (first_num == null) {
    print("| Please try again !");
    print("---------------------------------------------------------------- \n");    
    exit(0);
  }
  
  stdout.write("| Please enter the second number : ");
  int? second_num = int.tryParse(stdin.readLineSync().toString());
  if (second_num == null) {
    print("| Please try again !");
    print("---------------------------------------------------------------- \n");    
    exit(0);
  }
  /*
  stdout.write("Please choose the operator (all) : ");
  String? optor = stdin.readLineSync().toString();
  if (optor == "") {
    print("Please try again !");
    print("---------------------------------------------------------------- \n");    
    exit(0);
  } */
  print("---------------------------------------------------------------- \n");
  
  // doAndDie(optor, first_num, second_num);
  doAndDie(first_num, second_num);
}

// String arithmetical(optor) {
String arithmetical() {
  
  // if (optor == "all") {
  print("| 1. Division (/)");
  print("| 2. Multiplication (*)");
  print("| 3. Subtraction (-)");
  print("| 4. Addition (+)");
  stdout.write("| Please choose only one (1 or 2 or 3 or 4) : ");
  
  /*stdout.write("Please choose only one (1 or 2 or 3 or 4) : \n");
  print("1. Division (/) \n2. Multiplication (*) \n3. Subtraction (-) \n4. Addition (+)");*/
  
  // }
  String? choose_num = stdin.readLineSync().toString();
  return choose_num;
}

// void doAndDie(num, first_num, second_num) {
void doAndDie( first_num, second_num) {
  
  // String? number = arithmetical(num);
  String? number = arithmetical();
  print("---------------------------------------------------------------- \n");
    
  if (number == "4") {
    total_number = first_num + second_num;
    print("| Your total number is : ${total_number}");
    tryOrFail(first_num, second_num);
  }
  else if(number == "3") {
    total_number = first_num - second_num;
    print("| Your left number is : ${total_number}");
    tryOrFail(first_num, second_num);
  }  
  else if(number == "2") {
    total_number = first_num * second_num;
    print("| Your result number is : ${total_number}");
    tryOrFail(first_num, second_num);
  }  
  else if(number == "1") {
    total_number = first_num ~/ second_num;
    print("| Your quotient number is : ${total_number}");
    tryOrFail(first_num, second_num);
  }
  else {
    print("| Please choose a number and try again !");
  }
  print("----------------------------------------------------------------\n");
}

void tryOrFail(first_num, second_num) {
  
  stdout.write("| Do you want to continue (y/n) ? : ");
  String continue_break = stdin.readLineSync().toString();
  print("---------------------------------------------------------------- \n"); 
  
  if( continue_break == "y" ) {
    next_num();
  }else {
    print("| Please try again !");
    print("---------------------------------------------------------------- \n"); 
    exit(0);
  }
  
}

void next_num() {
  print("| Your total number is : ${total_number}");
  stdout.write("| Please enter a number : ");
  next_number = int.tryParse(stdin.readLineSync().toString());
  print("---------------------------------------------------------------- \n");
  doAndDie(total_number, next_number);
}