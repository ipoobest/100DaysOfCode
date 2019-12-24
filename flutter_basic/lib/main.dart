import 'package:flutter/material.dart';

main() {
  runApp(QuoteApp());
}

class QuoteApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quote',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quote'),
      ),
      body: ListView(
        children: <Widget>[
          QuoteCard('อยู่ตรงไหนก็ไม่เห็นค่า อยู่ตรงหน้ายังไม่เห็นเลย', 'hoikhong'),
          QuoteCard('หัวใจนะครับไม่ใช่หัวนมที่จะมาขยี้ให้ระบมแล้วจากไปปป', 'hoikhong'),
          QuoteCard('เขาไม่ได้ละเลยนะครับ เขาแค่ไม่รักมึงเลยต่างหา', 'hoikohng'),
          QuoteCard('ไปทำธุระ เรียกว่าลากิจ แต่เธอเดินออกไปจากชีวิตเรียกลาก่อน', 'hoikhong'),
        ],
      ),
    );
  }
}

class QuoteCard extends StatelessWidget {
  final String _text;
  final String _author;

  const QuoteCard(
    this._text,
    this._author, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8),
      child: Column(
        children: <Widget>[
          Container(
            height: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://storage.googleapis.com/autostation-com/2019/05/cb18b85e-ducati-elettrico-01-970x545.jpg'))),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '$_text',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Container(
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '$_author',
            ),
          ),
        ],
      ),
    );
  }
}
