
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Divide extends StatelessWidget {
  
  TextEditingController num1Cntrlr = TextEditingController();
  TextEditingController num2Cntrlr = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('DIVIDE'),
        ),
        body: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.only(left: 12.0, right: 12.0),
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
                          hintText: 'Enter first number',
                        ),
                      ),
                    ),

                    SizedBox(width: 4.0),

                    Icon(Icons.timeline),

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
                            hintText: 'Enter first number',
                          ),
                        )),
                  ],
              ),

              SizedBox(height: 30.0),

              ButtonTheme(
                minWidth: 100,
                height: 40,
                child: RaisedButton(
                  onPressed: (){
                    print((double.parse(num1Cntrlr.text) / double.parse(num2Cntrlr.text)).toStringAsFixed(5));
                  },
                  color: Colors.purpleAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0)
                  ),
                  child: Center(child: Text('DIVIDE')),
                ),
              ),
            ],
          ),
        )
      )
    );
  }
}
