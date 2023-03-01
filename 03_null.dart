void main() {
  String? name; // nullable

  if (name != null && name.contains("aung")) {
    print("your name is aung");
  } else {
    print("you are not");
  }

  if (name != null) {
    print(name);
  }

  print(name ?? "none");
}
