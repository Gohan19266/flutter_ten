import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget{

  @override
  createState() => _ContadorPageState();
  
}

class _ContadorPageState extends State<ContadorPage> {

  final _styleText = new TextStyle(fontSize:25);
  int _conteo = 10;
  
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
            Text('Hola en scaffold contador',style: _styleText,),
            Text('$_conteo',style:_styleText,)
          ],
        ),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: _addBotons(),
    );
  } 

  Widget _addBotons(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
         SizedBox(width:30),
        FloatingActionButton(child: Icon( Icons.add),onPressed:_Adition),
        Expanded(child:SizedBox(width:5.0),),
        FloatingActionButton(child: Icon( Icons.remove),onPressed:null),
        SizedBox(width:5.0),
        FloatingActionButton(child: Icon( Icons.add_circle),onPressed:null),
      ],
    );
  }

  void _Adition(){
    setState(() => _conteo++ );
  }

  void _sustraccion(){
    setState(() => _conteo--)
  }

  void _reset(){
    setState(() =>_conteo=0);
  }
}