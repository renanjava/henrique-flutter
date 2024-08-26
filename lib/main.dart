import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exemplo de Card com ListView',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Cards em ListView'),
        ),
        body: MyCardList(),
      ),
    );
  }
}

class MyCardList extends StatelessWidget {
  final List<String> items =
      List<String>.generate(10, (index) => "Item $index");

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Card(
          margin: EdgeInsets.all(10.0),
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              items[index],
              style: TextStyle(fontSize: 18),
            ),
          ),
        );
      },
    );
  }
}
