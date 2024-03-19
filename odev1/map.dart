void main() {
  //map

  var dictionary1 = new Map();
  dictionary1["book"] = "kitap";
  dictionary1["little"] = "küçük";
  var dictionary2 = {"kitap": "book", "küçük": "little"};

  print(dictionary1);
  print(dictionary2);

  for (var key in dictionary2.keys) {
    print(key);
  }
  for (var value in dictionary2.values) {
    print(value);
  }

  print(dictionary2.containsKey("kitap"));

  dictionary2.forEach((k, v) {print(k + " : " + v);});
}
