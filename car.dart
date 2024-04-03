void main() {
  Car car = Car();
  Car.getEngine();
  car.travel();
}

class Car extends Toyota{
  
  // Toyota toyota = Toyota();
  static void getEngine() {
    print("Powerful Engine");
  }
  
}

class Toyota {
  String type = "Toyota";
  int mile = 250;
  String country = "United States";
  
  void travel() {
    print("Australia to Canada");
  }
  
  String engine() {
    return "Powerful engine";
  }
}

/**
 * ----------------------------------------------------------------
 * | Inheritence ( the way to get multiple inheritance )
 * | Polymorphism
 * | Encapsulation
 * | Abstraction
 * -----------------------------------------------------------------
 * | Super ( super.work() ) | constructor : super ()
 * | @override
 * | this
 * -----------------------------------------------------------------
 * | method override || polymorphism
 * -----------------------------------------------------------------
 * | Cascade Notations
 * -----------------------------------------------------------------
 * | smartphone.call() | smartphone.message() | smartphone.play()   
 * | smartphone..call()..message()..play()                            
 * ------------------------------------------------------------------
 * | Static Variables && Static Methods ( one plaace in memory )
 * ------------------------------------------------------------------
 * | Access Modifier ( library level )
 * ------------------------------------------------------------------
 * | private ( String _a = 3; ) 
 * | public ( String a = 3; )
 * | getter | setter ( get | set ) | parameter one value
 * ------------------------------------------------------------------
 * | Abstract Classes && Abstract Methods ( use abstract keyword )
 * | Have to override abstract method if you extend abstract class
 * ------------------------------------------------------------------
 * | Interface ( implement simple class | override method )
 * ------------------------------------------------------------------
 * | Mixin
 * | the same as inheritance but not constructor and no child class
 * | class Engineer extends Engineering with English {}
 * | mixin English on Engineering {}
 * | use class or mixin keyword
 * ------------------------------------------------------------------
 * | final and const - constant ( not allow to reassign )
 * | const - compile time const
 * ------------------------------------------------------------------
 * | Extension method ( above 2.0 ) - increate method on __
 * | extension extension_name on __ { method }
 * ------------------------------------------------------------------
 */