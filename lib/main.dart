import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter_app/RandomWords.dart';

void main()=>runApp(new MyApp());
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    final wordPair = new WordPair.random();
    return new MaterialApp(
      title:'Startup Name Generator',
      theme:new ThemeData(
        primaryColor:Colors.blueGrey,
      ),
      home: new RandomWords(),
    );
  }
}