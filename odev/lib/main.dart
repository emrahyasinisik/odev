import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Myapp()));
}

class Myapp extends StatelessWidget {
  String mesaj = 'Merhaba İlk uygulamam';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(mesaj)),
      body: Center(
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
    );
  }
}
