import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(home: Myapp()));
}

class Myapp extends StatelessWidget {
  String mesaj = 'Merhaba İlk uygulamam';
  @override
  Widget build(BuildContext context) {
    var ogrenciler = ["engin demiroğ", 'Kerem Variş', "Berkya bilgin", "murat kurtboğan"];
    return Scaffold(
      appBar: AppBar(title: Text(mesaj)),
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
                  itemCount: ogrenciler.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Text(ogrenciler[index]);
                  })),
          Center(
            child: ElevatedButton(
              onPressed: () {
                int puan = 55;
                String mesaj = "";
                if (puan >= 50) {
                  mesaj = 'Geçti';
                } else if (puan >= 40) {
                  mesaj = 'Bütünlemem';
                } else {
                  mesaj = 'Kaldi';
                }
                var alert = AlertDialog(
                  title: Text('Sinav Sonucu'),
                  content: Text(mesaj),
                );

                showDialog(context: context, builder: (BuildContext context) => alert);
              },
              child: Text('sonucu gör'),
            ),
          ),
        ],
      ),
    );
  }
}
