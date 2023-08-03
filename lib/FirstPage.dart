import 'package:first/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  var nameFromHome;
  FirstPage(this.nameFromHome);  //create constructor for getting value
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Page"),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Welcome $nameFromHome",style: TextStyle(fontSize: 45,color: Colors.blue)),
            Text(
              "First Page",
              style: TextStyle(fontSize: 45),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyHomePage()));
                },
                child: Text("Home Page"))
          ],
        ),
      ),
    );
  }
}
