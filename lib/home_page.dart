import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var num1 = 1, num2 = 0, sum = 0;
  final TextEditingController t1 = TextEditingController();
  final TextEditingController t2 = TextEditingController();

  void doAddition() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 + num2;
    });
  }

  void doSubtraction() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 - num2;
    });
  }

  void doMultiplication() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 * num2;
    });
  }

  void doDivision() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 ~/ num2;
    });
  }

  void doClear() {
    setState(() {
      t1.text = "0";
      t2.text = "0";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 90, 0, 0),
              ),
              Text(
                "Output: $sum",
                style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.deepOrange,
                    fontWeight: FontWeight.bold),
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(hintText: "Enter Number 1"),
                controller: t1,
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(hintText: "Enter Number 2"),
                controller: t2,
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      doAddition();
                    },
                    child: Text(
                      "+",
                      style: TextStyle(fontSize: 25.0),
                    ),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      doSubtraction();
                    },
                    child: Text(
                      "-",
                      style: TextStyle(fontSize: 25.0),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      doMultiplication();
                    },
                    child: Text(
                      "*",
                      style: TextStyle(fontSize: 25.0),
                    ),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      doDivision();
                    },
                    child: Text(
                      "/",
                      style: TextStyle(fontSize: 25.0),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      doClear();
                    },
                    child: Text("Clear"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
