import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main(List<String> args) {
  debugPaintSizeEnabled = true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: Center(child: buildAll()),
      ),
    );
  }
}

Widget buildAll() => Column(
      children: [
        buildRow(),
        buildColumn(),
      ],
    );

Widget buildRow() => Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: Image.network(
            "https://i.seadn.io/gcs/files/27c8deff63c49ff6708423fe80692e53.png?auto=format&dpr=1&w=384",
          ),
        ),
        Expanded(
          flex: 2,
          child: Image.network(
            "https://i.seadn.io/gcs/files/1c0c8bf5963d55bf681713ce04063a13.png?auto=format&dpr=1&w=384",
          ),
        ),
        Expanded(
          child: Image.network(
            "https://i.seadn.io/gcs/files/cf801e75d73660f8929404d61b263fe6.png?auto=format&dpr=1&w=384",
          ),
        ),
      ],
    );

Widget buildColumn() => Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.network(
          "https://i.seadn.io/gcs/files/27c8deff63c49ff6708423fe80692e53.png?auto=format&dpr=1&w=384",
          width: 100,
          height: 100,
        ),
        Image.network(
          "https://i.seadn.io/gcs/files/1c0c8bf5963d55bf681713ce04063a13.png?auto=format&dpr=1&w=384",
          width: 100,
          height: 100,
        ),
        Image.network(
          "https://i.seadn.io/gcs/files/cf801e75d73660f8929404d61b263fe6.png?auto=format&dpr=1&w=384",
          width: 100,
          height: 100,
        ),
      ],
    );
