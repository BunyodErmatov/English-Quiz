import 'package:flutter/material.dart';

class Natija extends StatelessWidget {
  final int natija;
  final int savollarSoni;
  final Function() qaytadanBoshlash;

  const Natija(
    this.natija,
    this.savollarSoni,
    this.qaytadanBoshlash, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    print("Natija");
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Natija: $natija/$savollarSoni",
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          ElevatedButton.icon(
            onPressed: qaytadanBoshlash,
            label: const Text("RESTART"),
            icon: const Icon(Icons.restart_alt),
          ),
        ],
      ),
    );
  }
}
