

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app_multipage/pages/sidenavbar.dart';

class Subtract extends StatefulWidget {

  @override
  _SubtractState createState() => _SubtractState();
}

class _SubtractState extends State<Subtract> {

  TextEditingController num1Cntrlr = TextEditingController();
  TextEditingController num2Cntrlr = TextEditingController();

  double _difference = 0;
  _getDifference(double num1, double num2){
    setState(() {
      this._difference = (num1 - num2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('ADD'),
    ),
    drawer: SideNavBar(),
    body: Container(
          padding: EdgeInsets.only(left: 12.0, right: 12.0),
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Flexible(
                    child: TextField(
                      keyboardType: TextInputType.numberWithOptions(decimal: true),
                      inputFormatters: [
                        WhitelistingTextInputFormatter(RegExp(r'^\d+\.?\d{0,15}')),
                      ],
                      controller: num1Cntrlr,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        prefixIcon: Icon(Icons.filter_1),
                        hintText: 'First number',
                      ),
                    ),
                  ),

                  SizedBox(width: 4.0),

                  Icon(Icons.remove),
                  /*Icon(Icons.close),
                  Icon(Icons.control_point),
                  Icon(Icons.timeline),*/

                  SizedBox(width: 4.0),

                  Flexible(
                    child: TextField(
                      keyboardType: TextInputType.numberWithOptions(decimal: true),
                      inputFormatters: [
                        WhitelistingTextInputFormatter(RegExp(r'^\d+\.?\d{0,15}')),
                      ],
                      controller: num2Cntrlr,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        prefixIcon: Icon(Icons.filter_2),
                        hintText: 'Second number',
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 30.0),

              SizedBox(
                width: 150,
                height: 40,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.lightBlueAccent,
                        width: 2,
                        style: BorderStyle.solid,
                      ),
                      borderRadius: BorderRadius.circular(8)
                  ),
                  child: Center(
                    child: Text(_difference.toString(), style: TextStyle(
                      fontSize: 25,
                    )),
                  ),
                ),
              ),

              SizedBox(height: 30.0),

              ButtonTheme(
                minWidth: 70,
                height: 40,
                child: RaisedButton(
                  onPressed: (){
                    _getDifference(double.parse(num1Cntrlr.text), double.parse(num2Cntrlr.text));
                    print(double.parse(num1Cntrlr.text) - double.parse(num2Cntrlr.text));
                  },
                  color: Colors.pinkAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Center(child: Text('SUBTRACT')),
                ),
              ),
            ],
          ),
        )
    );
  }
}
