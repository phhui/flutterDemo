import 'dart:developer';

import 'package:english_words/english_words.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/pqlib/PqBar.dart';
import 'package:flutter_app/pqlib/PqList.dart';

class RandomWords extends StatefulWidget{
  @override
  createState()=>new RandomWordsState();
}

class RandomWordsState extends State<RandomWords>{
  final _suggestions = <WordPair>[];
  final _saved=new Set<WordPair>();
  final _biggerFont=const TextStyle(fontSize: 18.0);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar:new PqBar(cb:_pushSaved),
      body:new PqList(update, _saved,_suggestions).builder(),
    );
  }
  void update(save,pair){
    log(save.toString()+pair.toString());
    setState(() {
      if (save) {
        _saved.remove(pair);
      } else {
        _saved.add(pair);
      }
    });
  }
  void _pushSaved(){
   Navigator.of(context).push(
     new MaterialPageRoute(builder: (context){
       final tiles=_saved.map(
           (pair){
             return new ListTile(
               title:new Text(
                 pair.asPascalCase,
                 style:_biggerFont,
               ),
             );
           },
       );
       final divided=ListTile.divideTiles(tiles: tiles,context: context).toList();
       return new Scaffold(
         appBar:new AppBar(
           title:new Text('Saved Suggestions'),
         ),
         body:new ListView(children:divided),
       );
     }),
   );
  }
}