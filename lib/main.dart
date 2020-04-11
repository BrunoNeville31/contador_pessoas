import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    title: "Contador de Pessoas",
    home: Home()
  ));
}


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _people = 0;

  void _changePeople(int delta){
    setState(() {
      _people += delta;
    });    
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          "images/logo.jpg",
          fit: BoxFit.cover,
          height: 1000.0,
        ),
        Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "Pessoas: $_people",
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
            Padding(padding: EdgeInsets.all(10.0),
            child:  FlatButton(
                  onPressed: (){_changePeople(1);},
                  child: Text("+1", style: TextStyle(color: Colors.green, fontSize: 40.0)            )
                ),
              ),
              Padding(padding: EdgeInsets.all(10.0),
            child:  FlatButton(
                  onPressed: (){_changePeople(-1);},
                  child: Text("-1", style: TextStyle(color: Colors.red, fontSize: 40.0)            )
                ),
              ),
            ],
          ),
          Text(
            "Pode entrar",
          style: TextStyle(color: Colors.blueGrey, 
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic),
          ),
        ],
      )
      ],
    );
  }
}