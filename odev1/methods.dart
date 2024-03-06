void main() {
  selamVer2("engin");
  selamVer2("engin");
  selamVer2("engin");
  selamVer2("engin");
  selamVer2("engin");

  var hesapSonucu = hesapla(100000, 15);
  print(hesapSonucu);

  // test1(1, 2);
}

void selamVer() {
  print("Selam");
}

void selamVer2(String kullanici) {
  print("selam " + kullanici);
}

double hesapla(double krediTutari, double yuzde) {
  var sonuc = krediTutari * yuzde / 100;
  return sonuc;
}

// void test1(int sayi1, [int sayi2, int sayi3]) {
//   print(sayi1);
//   print(sayi2);
//   print(sayi3);
// }
