import 'package:quizapp/models/question.dart';

List<Question> getQuetions() {
  List<Question> list = [];
  list.add(
    Question(
      "Web tarayıcıları hangi amaçla kullanılır?",
      [
        Answer("Sosyal medya takibi", false),
        Answer("E-posta Gönderme", false),
        Answer("Web Sitelerini görüntüleme", true),
        Answer("Oyun oynama", false),
      ],
    ),
  );

  list.add(
    Question(
      "IP adresi nedir?",
      [
        Answer("İnternet hızını ölçen bir araç", false),
        Answer("Bir web sitesinin adı", false),
        Answer("Cihazın internete bağlandığı nokta", true),
        Answer("nternet tarayıcısının sürümü", false),
      ],
    ),
  );

  list.add(
    Question(
      "Hangi protokol e-posta göndermek için kullanılır?",
      [
        Answer("HTTP", false),
        Answer("FTP", false),
        Answer("SMTP", true),
        Answer(" POP3", false),
      ],
    ),
  );

  list.add(
    Question(
      "Hangi cihazlar Wi-Fi ile internete bağlanabilir?",
      [
        Answer("Sadece bilgisayarlar", false),
        Answer(" Sadece akıllı telefonlar", false),
        Answer("Bilgisayarlar, telefonlar, tabletler ve daha fazlası", true),
        Answer("Sadece televizyonlar", false),
      ],
    ),
  );
  return list;
}
