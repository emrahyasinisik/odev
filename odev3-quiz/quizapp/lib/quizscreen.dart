import 'package:flutter/material.dart';
import 'package:quizapp/data/question_data.dart';

class quizScreen extends StatefulWidget {
  const quizScreen({super.key});

  @override
  State<quizScreen> createState() => _quizScreenState();
}

class _quizScreenState extends State<quizScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 200, left: 55),
            child: SizedBox(
              height: 200,
              width: 300,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.black)),
                padding: EdgeInsets.only(top: 30),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, top: 0),
                  child: Text(
                    myquizapp.ridequestion(),
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 55, top: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        myquizapp.nextQuestion(context);
                      });
                    },
                    child: Text(
                      myquizapp.ridequestion_a(),
                      style: TextStyle(fontSize: 20),
                    ),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(300, 50),
                      maximumSize: Size(300, 70),
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          myquizapp.nextQuestion(context);
                        });
                      },
                      child: Text(myquizapp.ridequestion_b(),
                          style: TextStyle(fontSize: 20)),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(300, 50),
                        maximumSize: Size(300, 70),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          myquizapp.nextQuestion(context);
                        });
                      },
                      child: Text(myquizapp.ridequestion_c(),
                          style: TextStyle(fontSize: 20)),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(300, 50),
                        maximumSize: Size(300, 70),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          myquizapp.nextQuestion(context);
                        });
                      },
                      child: Text(myquizapp.ridequestion_d(),
                          style: TextStyle(fontSize: 20)),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(300, 50),
                        maximumSize: Size(300, 70),
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
