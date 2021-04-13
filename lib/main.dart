import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(ScreenWidget());
}
class ScreenWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('StatefullWidget'),
        ),
        body: SimpleWidget(),
      ),
    );
  }
}
class SimpleWidget extends StatelessWidget{
  const SimpleWidget({Key key}) : super(key:key);
  Widget build (BuildContext context){
    return Center(
      child: Container(
        //color: Colors.green,
        child: Text('Panda',style: TextStyle(fontSize: 40,color: Colors.white70),
        ),
        height: 200,
        width: 200,
        alignment: Alignment.center,
        //padding: EdgeInsets.symmetric(horizontal: 40,vertical: 20),
        margin: EdgeInsets.all(50),
        //transform: Matrix4.rotationZ(0,1),
        decoration: BoxDecoration(
         // gradient: LinearGradient(colors: [Colors.red,Colors.cyan])
        //color: Colors.green
            image: DecorationImage(
        image: Image.network('https://static.ogorodniki.com/ogorod/d7/xl_e1f8813d-3ea8-4ec6-907f-ba3f678644d7.jpeg')
            .image,
          fit: BoxFit.cover),
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
              color: Colors.black45,
              offset: Offset(-5,5),
              blurRadius: 5,
              spreadRadius: 5)
        ]
        //  borderRadius: BorderRadius.circular(15),
        //  border: Border.all(
        //    color: Colors.black,
        //    width: 8,
          )
        ),
      );
    //);
  }
}