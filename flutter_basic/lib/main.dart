import 'package:flutter/material.dart';

main() {
  runApp(QuoteApp());
}

class QuoteApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quote',
      home: StagefulHomePage(),
    );
  }
}

class Quote {
  final String text;
  final String author;

  Quote(this.text, this.author);
}

class StagefulHomePage extends StatefulWidget {
  @override
  _StagefulHomePageState createState() => _StagefulHomePageState();
}

class _StagefulHomePageState extends State<StagefulHomePage> {
  final _formkey = GlobalKey<FormState>();
  String _inputQuote;
  String _inputAuthor;
  List<Quote> quotes = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Quote'),
        ),
        body: Column(
          children: <Widget>[
            Form(
              key: _formkey,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    TextFormField(
                        decoration: InputDecoration(labelText: 'Qoute'),
                        onSaved: (String value) {
                          _inputQuote = value;
                        }),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Author'),
                      onSaved: (String value) {
                        _inputAuthor = value;
                      },
                    ),
                    RaisedButton(
                      onPressed: () {
                        _formkey.currentState.save();
                        setState(() {
                        quotes.insert(0,Quote(_inputQuote, _inputAuthor));
                        });
                        _formkey.currentState.reset();
                      },
                      child: Text('Add'),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: quotes.length == 0
                  ? Center(
                      child: Text('Empty'),
                    )
                  : ListView.builder(
                      itemCount: quotes.length,
                      itemBuilder: (BuildContext context, int index) {
                        return QuoteCard(
                            quotes[index].text, quotes[index].author);
                      },
                    ),
            ),
          ],
        ));
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
          // Container(
          //   height: 300,
          //   decoration: BoxDecoration(
          //       borderRadius: BorderRadius.circular(4),
          //       image: DecorationImage(
          //           fit: BoxFit.cover,
          //           image: NetworkImage(
          //               'https://storage.googleapis.com/autostation-com/2019/05/cb18b85e-ducati-elettrico-01-970x545.jpg'))),
          // ),
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
