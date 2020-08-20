import 'package:english_words/english_words.dart';
import 'package:flutter/cupertino.dart';

class RandomWords extends StatefulWidget{
  @override
  createState()=>new RandomWordsState();
}
class RandomWordsState extends State<RandomWords>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final wordPair=new WordPair.random();
    return new Text(wordPair.asPascalCase);
  }
}