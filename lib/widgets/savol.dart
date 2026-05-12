import 'package:flutter/material.dart';

class Savol extends StatelessWidget {
  final String savol;
  final List<Map<String, dynamic>> javoblar;
  final Function savolgaJavobBerish;

  const Savol(
    this.savol,
    this.javoblar,
    this.savolgaJavobBerish, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    print("Savol");
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          savol,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        ElevatedButton(
          onPressed: () => savolgaJavobBerish(
            javoblar[0]["tog'rimi"],
          ),
          child: Text(
            javoblar[0]['matn'],
            style: const TextStyle(fontSize: 25),
          ),
        ),
        ElevatedButton(
          onPressed: () => savolgaJavobBerish(
            javoblar[1]["tog'rimi"],
          ),
          child: Text(
            javoblar[1]['matn'],
            style: const TextStyle(fontSize: 25),
          ),
        ),
        ElevatedButton(
          onPressed: () => savolgaJavobBerish(
            javoblar[2]["tog'rimi"],
          ),
          child: Text(
            javoblar[2]['matn'],
            style: const TextStyle(fontSize: 25),
          ),
        ),
        ElevatedButton(
          onPressed: () => savolgaJavobBerish(
            javoblar[3]["tog'rimi"],
          ),
          child: Text(
            javoblar[3]['matn'],
            style: const TextStyle(fontSize: 25),
          ),
        ),
      ],
    );
  }
}
