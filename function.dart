/**********************************************************
 * Copyright (c) 20234 - Higher Order Functions
 **********************************************************
 
void main() {
  student() => print("I am a student.");
  school("Sittwe", student);
}

void school(String name, Function info) {
  info();
  print("School locate in ${name}.");
} */

/**********************************************************
 * Copyright (c) 20234 - Lambda Functions
 **********************************************************
 
void main() {
  city("Yangon");
  township("South Dangon");
}
 
var city = ( String name ) {
  print("City is ${name}.");
};

var township = ( name ) {
  print( "Township is ${name}." );
}; */

/**********************************************************
 * Copyright (c) 20234 - Closure Functions
 *********************************************************/
 
 main() {
  Function shopping_mall = shop();
  shopping_mall();
 }
 
 shop() {
  int price = 200;  
  buy() => print(price);  
  return buy;
 }