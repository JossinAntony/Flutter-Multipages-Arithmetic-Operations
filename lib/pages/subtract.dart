

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Subtract extends StatelessWidget {

  TextEditingController num1Cntrlr = TextEditingController();
  TextEditingController num2Cntrlr = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('SUBTRACT'),
        ),
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

              ButtonTheme(
                minWidth: 70,
                height: 40,
                child: RaisedButton(
                  onPressed: (){
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
      )
    );
  }
}
