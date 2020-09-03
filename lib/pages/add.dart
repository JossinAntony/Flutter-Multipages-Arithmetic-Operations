

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Add extends StatefulWidget {

  @override
  _AddState createState() => _AddState();
}

class _AddState extends State<Add> {

  TextEditingController num1Cntrlr = TextEditingController();
  TextEditingController num2Cntrlr = TextEditingController();

  double sum = 0;

  _sum(double number_1, double number_2){
    setState(() {
      this.sum = (number_1 + number_2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('ADD'),
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

                  Icon(Icons.control_point),
                  /*Icon(Icons.close),
                  Icon(Icons.remove),
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
                    child: Text(sum.toString(), style: TextStyle(
                      fontSize: 25,
                    )),
                  ),
                ),
              ),

              SizedBox(height: 30.0),

              RaisedButton(
                onPressed: (){
                  _sum(double.parse(num1Cntrlr.text), double.parse(num2Cntrlr.text));
                  print(double.parse(num1Cntrlr.text) + double.parse(num2Cntrlr.text));
                },
                color: Colors.greenAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Center(child: Text('ADD')),
              ),
            ],
          ),
        )
      )
    );
  }
}
