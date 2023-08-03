import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override //this is due to abstraction in StatelessWidget //we need to override this function
  Widget build(BuildContext context) {
    // TODO: implement build
    //Cupertino is used for native ios and material is used for native android //we need to do conditional programming for that
    return MaterialApp(
      title: "Everything about main",
      theme: ThemeData( //decide the theme
        primaryColor: Colors.cyanAccent,
      ),
      home: HomePage(),
    );
    throw UnimplementedError();
  }
}

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("HomePage"),
      ),
      body: Container(
        child: Text('Hello'),
        color: Colors.amber,
      ),
    );
    throw UnimplementedError();
  }
}