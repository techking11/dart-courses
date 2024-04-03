void main() {
  final computer = Computer(
    type: "Acer",
    ram: "4GB",
    price: "100 Lakhs",
    disk: "500 HDD"
  );
  print("----------------------------------------------------------------");
  print("| Laptop is " + computer.getType() + ".");
  print("| Ram is " + computer.getRam() + ".");
  print("| Disk is " + computer.getDisk() + ".");
  print("| Price is " + computer.getPrice() + ".");
  print("----------------------------------------------------------------");
}

class Computer {
  String type;
  String ram;
  String price;
  String disk;
  
  Computer({
    required String this.type,
    required String this.ram,
    required String this.price,
    required String this.disk }) {}
  
  String getType() {
    return this.type;
  }
  
  String getRam() {
    return this.ram;
  }
  
  String getPrice() {
    return this.price;
  }
  
  String getDisk() {
    return this.disk;
  }
  
}