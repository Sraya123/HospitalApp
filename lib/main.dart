import 'package:flutter/material.dart';
void main() {
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    theme:  ThemeData(
      primaryColor: const Color(0xFF02BB9F),
      primaryColorDark: const Color(0xFF167F67),
      accentColor: const Color(0xFF167F67),
    ),
    home:  DropdownScreen(),
  ));
}
class Item {
  const Item(this.name,this.icon);
  final String name;
  final Icon icon;
}
class DropdownScreen extends StatefulWidget {
  State createState() =>  DropdownScreenState();
}
class DropdownScreenState extends State<DropdownScreen> {
  Item selectedUser;
  List<Item> users = <Item>[
    const Item('Cardiology',Icon(Icons.airline_seat_flat,color:  const Color(0xFF167F67),)),
    const Item('Intensive Care Unit',Icon(Icons.airline_seat_flat,color:  const Color(0xFF167F67),)),
    const Item('Maternity Ward',Icon(Icons.airline_seat_flat,color:  const Color(0xFF167F67),)),
    const Item('Gyanecology',Icon(Icons.airline_seat_flat,color:  const Color(0xFF167F67),)),
  ];
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home:  Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF167F67),
          title: Text(
            'Choose Your Department',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body:  Center(
          child:  DropdownButton<Item>(
            hint:  Text("Select item"),
            value: selectedUser,
            onChanged: (Item Value) {
              setState(() {
                selectedUser = Value;
              });
            },
            items: users.map((Item user) {
              return  DropdownMenuItem<Item>(
                value: user,
                child: Row(
                  children: <Widget>[
                    user.icon,
                    SizedBox(width: 10,),
                    Text(
                      user.name,
                      style:  TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}