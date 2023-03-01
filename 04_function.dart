void main() {
  // void eat1(String what, String? action) {
  //   print("I'm $action $what");
  // }

  // what -> nullable
  // void eat({required String action, String? what}) {
  //   print("I'm $action ${what ?? ""}");
  // }

  // eat(action: "eating", what: "hot pot");

  final Map<String, List<String>> places = {
    "yangon": ["Zoo", "SDG"],
    "bagan": ["AND", "TVN", "Bagan Tample"]
  };

  /* +++++++++++++++++ part 1 +++++++++++++++++ */

  void travel({required String palce}) {
    bool check = false;

    places.forEach((key, value) {
      if (palce == key) {
        String places = "";
        for (var item in value) {
          places += item + ",";
        }
        print("We will go to $places");
        check = true;
      }
    });

    check ? "" : print("go to bed guy");
  }

  travel(palce: "");

  /* +++++++++++++++++ part 2 +++++++++++++++++ */

  MapEntry travel2({required String place}) {
    final toGoPlaces = places.entries.where((e) {
      if (e.key == place) {
        return true;
      } else {
        return false;
      }
    }).toList();

    return toGoPlaces.isEmpty
        ? MapEntry("mandalay", ["BG", "MH"])
        : toGoPlaces[0];
  }

  final placeToGo = travel2(place: "bagan");
  String placesString = "";
  // for (var item in placeToGo.value) {
  //   placesString += "$item,";
  // }
  for (var i = 0; i < (placeToGo.value as List).length; i++) {
    placesString +=
        "${placeToGo.value[i]} ${i < ((placeToGo.value as List).length - 1) ? "," : "."}";
  }

  print("You should go to ${placeToGo.key} and travel to $placesString");
}
