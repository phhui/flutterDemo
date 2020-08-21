import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PqBar extends StatelessWidget with PreferredSizeWidget{
  final Function cb;
  PqBar({Key key,@required this.cb}):super(key:key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new AppBar(
      title:new Text('Startup Name Generator'),
      actions:<Widget>[
        new IconButton(icon: new Icon(Icons.list), onPressed: cb),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}