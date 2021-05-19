import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: '계산기'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            decoration: kBoxDecorationStyle,
            height: 60.0,
            child: TextField(
              keyboardType: TextInputType.text,
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                //hintText: '아이디를 입력하세요.',
                hintStyle: kHintTextStyle,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    CalcButton('7'),
                    CalcButton('8'),
                    CalcButton('9'),
                    CalcButton('/'),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    CalcButton('4'),
                    CalcButton('5'),
                    CalcButton('6'),
                    CalcButton('*'),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    CalcButton('1'),
                    CalcButton('2'),
                    CalcButton('3'),
                    CalcButton('-'),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    CalcButton('00'),
                    CalcButton('0'),
                    CalcButton('='),
                    CalcButton('+'),
                  ],
                ),
              ],
            ),
          ),
        ],

      ),
    );
  }
}

//계산이 되어야 한다.
const List OPERATORS = ['+', '-', '*', '/'];

String buffer = '';
double op1 = 0;
double op2 = 0;
String operator = '';
void addNumbers(String key) {
  print(key);
  // if (key == 'C') {
  //   buffer = '';
  // } else if (OPERATORS.contains(key)) {
  //   op1 = double.parse(buffer);
  //   operator = key;
  //   buffer = '';
  // } else if (key == '=') {
  //   op2 = double.parse(buffer);
  //   calculate(op1, op2, operator);
  //   buffer = '';
  // } else {
  //   buffer += key;
  // }
}

void calculate(double op1, double op2, String operator) {
  print('op1 : $op1 , op2: $op2 , operator: $operator');
  double res = 0.0;
  if (operator == "+") res = op1 + op2;
  if (operator == "-") res = op1 - op2;
  if (operator == '*') res = op1 * op2;
  if (operator == '/') res = op1 / op2;
  print('result is $res');
}

class CalcButton extends RaisedButton{
  CalcButton(this._key);

  final _key;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(_key),
      onPressed: (){
        addNumbers(_key);
      },
    );
  }
}

class FuncButton extends RaisedButton {
  FuncButton(this._key);

  final _key;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(_key),
      color: Colors.green,

      onPressed: () {
        addNumbers(_key);
      },
    );
  }
}