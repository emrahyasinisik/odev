void main() {
  for (var i = 1; i < 10; i++) {
    print(i);
  }

  var products = ["laptop", "mouse", "keyboard"];

  for (var i = 0; i < products.length; i++) {
    print(products[i]);
  }

  for (var product in products) {
    print(product);
  }

  int sayi = 10;
  while (sayi <= 10) {
    print(sayi);
    sayi++;
  }
}
