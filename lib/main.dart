import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(title: "primeiro projeto", home: Home()));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _people = 0;
  String _infoText = "Pode Entrar";
  void _changePeople(int delta){
    setState(() {
      _people += delta;
      if(_people < 0){
        _infoText = "mundo invertido?";
      }else{
        _infoText = "Pode entrar!";
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset("images/restaurant.jpg", fit: BoxFit.cover, height: 1000),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Pessoa: $_people",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: FlatButton(
                    child: Text(
                      '+1',
                      style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 30,
                          color: Colors.white),
                    ),
                    onPressed: (){
                      _changePeople(1);
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: FlatButton(
                    child: Text(
                      '-1',
                      style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 30,
                          color: Colors.white),
                    ),
                    onPressed: (){
                      _changePeople(-1);
                    },
                  ),
                ),
              ],
            ),
            Text("$_infoText", style: TextStyle(color: Colors.white,fontSize: 20),)
          ],
        ),
      ],
    );
  }
}
