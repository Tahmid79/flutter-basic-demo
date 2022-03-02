import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()) ;
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    final wordPair = WordPair.random() ;
    return MaterialApp(
        title: 'Welcome to Flutter',
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Welcome to flutter'),
          ),
          body:  Center(
              // child: const Text('Hello World')
            child: Text(wordPair.asPascalCase)
          ),
        ));
  }
}

class RandomWords extends StatefulWidget {
  const RandomWords({Key? key}) : super(key: key);

  @override
  _RandomWordsState createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  
  final _suggestions = <WordPair>[] ;
  final _saved = <WordPair>{} ; // NEW
  final _biggerFont = TextStyle(fontSize: 18) ;

  Widget _buildRow(WordPair pair){
    final alreadySaved = _saved.contains(pair) ; // NEW
    return ListTile(
      title: Text(
        pair.asPascalCase ,
        style: _biggerFont
      ),
      trailing: Icon(
        alreadySaved ? Icons.favorite : Icons.favorite_border,
        color : alreadySaved ? Colors.red : null ,
        semanticLabel: alreadySaved ? 'Remove from save' : 'Save',
      )
    ) ;
  }
  
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

