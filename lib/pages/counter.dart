import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {

  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Color(0xff67B26F), Color(0xff4ca2cd)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    width: 150,
                    height: 50,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        border: Border.all(
                          style: BorderStyle.solid,
                          color: Colors.pinkAccent.withOpacity(.4),
                          width: 3,
                        ),
                        boxShadow: [BoxShadow(
                          color: Colors.blueGrey.withOpacity(.4),
                          offset: Offset.zero,
                          blurRadius: 3,
                          spreadRadius: 5,
                        )],
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                      ),
                      child: Center(
                        child: Text(_counter.toString(), style: TextStyle(
                          fontSize: 25,
                        )),
                      ),
                    ),
                  ),

                  SizedBox(height: 20,),

                  ButtonTheme(
                    minWidth: 150,
                    height: 50,
                    buttonColor: Colors.blueAccent.withOpacity(.5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)
                    ),
                    child: RaisedButton.icon(onPressed: () {
                      setState(() {
                        _counter++;
                      });
                    }, icon: Icon(Icons.control_point), label: Text('INCREMENT'),
                    ),
                  ),

                  SizedBox(height: 20,),


                  ButtonTheme(
                    minWidth: 150,
                    height: 50,
                    buttonColor: Colors.pinkAccent.withOpacity(.5),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)
                    ),
                    child: RaisedButton.icon(onPressed: () {
                      setState(() {
                        _counter--;
                      });
                    }, icon: Icon(Icons.remove), label: Text('DECREMENT'),
                    ),
                  ),


                ],
              ),
            ),
          )
        );
  }
}
