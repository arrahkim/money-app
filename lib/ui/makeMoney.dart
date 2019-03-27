import 'package:flutter/material.dart';

class MakeMoney extends StatefulWidget {
  @override
  _MakeMoneyState createState() => _MakeMoneyState();
}

class _MakeMoneyState extends State<MakeMoney> {
  int _moneyCounter = 0;

  void rainMoney() {
    setState(() {
      _moneyCounter = _moneyCounter + 120;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Get Rich",
        ),
        backgroundColor: Colors.green,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Center(
              child: Text(
                "Get Rich",
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                    fontSize: 30.0),
              ),
            ),
            Expanded(
              child: Center(
                child: Text(
                  "\$$_moneyCounter ",
                  style: TextStyle(
                      color: _moneyCounter < 14000 ? Colors.orange : Colors.purple,
                      fontWeight: FontWeight.w800,
                      fontSize: 45.0),
                ),
              ),
            ),
            Expanded(
                child: Center(
              child: FlatButton(
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: rainMoney,
                child: Text(
                  "Let It Money",
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
