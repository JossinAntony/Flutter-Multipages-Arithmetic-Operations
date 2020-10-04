
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app_multipage/pages/sidenavbar.dart';

class Divide extends StatefulWidget {
  
  @override
  _DivideState createState() => _DivideState();
}

class _DivideState extends State<Divide> {

  TextEditingController num1Cntrlr = TextEditingController();
  TextEditingController num2Cntrlr = TextEditingController();

  double _quotient = 0;

  _getQuotient(double num1, double num2){
    setState(() {
      this._quotient = num1 / num2;
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
                    child: Text(_quotient.toString(), style: TextStyle(
                      fontSize: 25,
                    )),
                  ),
                ),
              ),

              SizedBox(height: 30.0),

              ButtonTheme(
                minWidth: 100,
                height: 40,
                child: RaisedButton(
                  onPressed: (){
                    _getQuotient(double.parse(num1Cntrlr.text), double.parse(num2Cntrlr.text));
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
    );
  }
}
