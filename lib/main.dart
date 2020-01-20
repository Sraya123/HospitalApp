import 'package:flutter/material.dart';
void main() {
  runApp(
      MaterialApp(
        title: "Ayush hospital app",
        home: PhnNumber(),
      )
  );
}
class PhnNumber extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _PhnNumberState();
  }
}

class _PhnNumberState extends State <PhnNumber> {
  String number="";
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("ONLINE APPOINTMENT APP"),
      ),
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            TextField(
              onSubmitted: (String userInput) {
                number = userInput;
              },
            ),
            Padding(
                padding: EdgeInsets.all(30.0),
                child:
                Text(
                  "Enter your Phone Number",
                  style: TextStyle(fontSize: 20.0),
                ))
          ],
        ),
      ),
    );
    // TODO: implement build
    return null;
  }
}
