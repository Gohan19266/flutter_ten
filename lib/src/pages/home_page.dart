

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{

  final styleText= new TextStyle(fontSize:25);
  final contador = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('10 Widgets'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Hola estamos en scaffold',style: styleText,),
            Text('$contador',style:styleText,)
          ],
        ),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          print('Hola Mundo');
        },
      ),
    );
  } 
  
}