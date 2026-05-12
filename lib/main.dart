import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/natija.dart';
import 'package:quiz_app/widgets/savol.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    print("Asosiy");
    return MaterialApp(
      // theme: ThemeData(useMaterial3: false, primarySwatch: Colors.green),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.white,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
            foregroundColor: Colors.white,
          ),
        ),
      ),
      title: "Quiz App",
      home: const Quiz(),
    );
  }
}

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<Map<String, dynamic>> savolVaJavob = [
    {
      'savol': "1.What is ______ name",
      'javob': [
        {'matn': "me", "tog'rimi": false},
        {'matn': "are", "tog'rimi": false},
        {'matn': "your", "tog'rimi": true},
        {'matn': "he", "tog'rimi": false},
      ],
    },
    {
      'savol': "2.Who _____ you?",
      'javob': [
        {'matn': "me", "tog'rimi": false},
        {'matn': "are", "tog'rimi": true},
        {'matn': "your", "tog'rimi": false},
        {'matn': "he", "tog'rimi": false},
      ],
    },
    {
      'savol': "3.Who _____ she from?",
      'javob': [
        {'matn': "me", "tog'rimi": false},
        {'matn': "are", "tog'rimi": false},
        {'matn': "your", "tog'rimi": false},
        {'matn': "is", "tog'rimi": true},
      ],
    },
    {
      'savol': "4.What color _____ you like?",
      'javob': [
        {'matn': "me", "tog'rimi": false},
        {'matn': "do", "tog'rimi": true},
        {'matn': "your", "tog'rimi": false},
        {'matn': "is", "tog'rimi": false},
      ],
    },
  ];

  int nowQuestionNumber = 0;
  int natija = 0;

  void answerQuestion(bool result) {
    setState(() {
      nowQuestionNumber++;

      if (result) {
        natija++;
      }
    });
  }

  void qaytadanBoshlash() {
    setState(() {
      nowQuestionNumber = 0;
      natija = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    print("Quiz");
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Ingiliz Tili Quiz"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: nowQuestionNumber < savolVaJavob.length
            ? Savol(
                savolVaJavob[nowQuestionNumber]['savol'],
                savolVaJavob[nowQuestionNumber]['javob'],
                answerQuestion,
              )
            : Natija(natija, savolVaJavob.length, qaytadanBoshlash),
      ),
    );
  }
}
