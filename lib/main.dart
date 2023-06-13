import 'package:flutter/material.dart';

void main() => runApp(const ChessBoard());

class ChessBoard extends StatelessWidget {
  const ChessBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Chess Board'),
        ),
        backgroundColor: Colors.grey,
        body: const Center(
          child: ChessBoardGrid(),
        ),
      ),
    );
  }
}

class ChessBoardGrid extends StatefulWidget {
  const ChessBoardGrid({super.key});

  @override
  ChessBoardGridState createState() => ChessBoardGridState();
}

class ChessBoardGridState extends State<ChessBoardGrid> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: 64,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 8,
      ),
      itemBuilder: (BuildContext context, int index) {
        return GridTile(
          child: Container(
            padding: const EdgeInsets.all(0.0),
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: (index / 8).floor() % 2 == 0
                    ? index % 2 == 0
                    ? Colors.black
                    : Colors.white
                    : index % 2 == 0
                    ? Colors.white
                    : Colors.black,
              ),
            ),
          ),
        );
      },
    );
  }
}

