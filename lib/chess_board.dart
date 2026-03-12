import 'package:flutter/material.dart';

class ChessBoard extends StatelessWidget {
  const ChessBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      appBar: AppBar(
        title: const Text(
          "Chess Board",
          style: TextStyle(
            color: Color.fromARGB(255, 0, 0, 0),
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(5, (int index) {
          return rowWidget(index + 1);
        }),
      ),
    );
  }

  Row rowWidget(int rowNumber) {
    if (rowNumber % 2 == 0) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          boxWidget(const Color.fromARGB(255, 39, 101, 138)),
          boxWidget(const Color.fromARGB(255, 156, 182, 197)),
          boxWidget(const Color.fromARGB(255, 39, 101, 138)),
          boxWidget(const Color.fromARGB(255, 156, 182, 197)),
          boxWidget(const Color.fromARGB(255, 39, 101, 138)),
        ],
      );
    } else {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          boxWidget(const Color.fromARGB(255, 156, 182, 197)),
          boxWidget(const Color.fromARGB(255, 39, 101, 138)),
          boxWidget(const Color.fromARGB(255, 156, 182, 197)),
          boxWidget(const Color.fromARGB(255, 39, 101, 138)),
          boxWidget(const Color.fromARGB(255, 156, 182, 197)),
        ],
      );
    }
  }

  Widget boxWidget(Color color) {
    return Container(
      height: 60,
      width: 60,
      color: color,
    );
  }
}
