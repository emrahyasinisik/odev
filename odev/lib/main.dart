

// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

// void main() {
//   runApp(MaterialApp(home: Myapp()));
// }

// class Myapp extends StatelessWidget {
//   String mesaj = 'Merhaba İlk uygulamam';
// List<>
//   var ogrenciler = ["engin demiroğ", 'Kerem Variş', "Berkya bilgin", "murat kurtboğan"];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text(mesaj)),
//       body: buildbody(context),
//     );
//   }

//   String sinavHesapla(int puan) {
//     int puan = 55;
//     String mesaj = "";
//     if (puan >= 50) {
//       mesaj = 'Geçti';
//     } else if (puan >= 40) {
//       mesaj = 'Bütünleme';
//     } else {
//       mesaj = 'Kaldi';
//     }
//     return mesaj;
//   }

//   void mesajGoster(BuildContext context, String mesaj) {
//     var alert = AlertDialog(
//       title: Text('Sinav Sonucu'),
//       content: Text(mesaj),
//     );

//     showDialog(context: context, builder: (BuildContext context) => alert);
//   }

//   Widget buildbody(BuildContext context) {
//     return Column(
//       children: [
//         Expanded(
//             child: ListView.builder(
//                 itemCount: student.length,
//                 itemBuilder: (BuildContext context, int index) {
//                   return ListTile(
//                     leading: CircleAvatar(backgroundImage: NetworkImage(),
//                     ),
//                     title: Text(students[index].firstName + " " + students[index].lastName),
//                     subtitle: Text("Sinavdan aldiği not : " + students[index].grade.toString()),
//                     // trailing: buildStatusIcon(student[index].grade),
//                     onTap: () {
//                       print(object)
//                     },
//                   )
//                 })),
//         Center(
//           child: ElevatedButton(
//             onPressed: () {
//               var mesaj = sinavHesapla(40);

//               mesajGoster(context, mesaj);
//             },
//             child: Text('sonucu gör'),
//           ),
//         ),
//       ],
//     );
//   }
  
//   Widget buildStatusIcon(int grade) {
//    if (grade >= 50) {
//       return Icon(Icons.done);
//     } else if (grade >= 40) {
//       return Icon(Icons.album);
//     } else {
//      return Icon(Icons.clear);
//     }
    
//   }
//   }
