import 'package:flutter/material.dart';

void main() => runApp(Home());

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final first = TextEditingController();
  final second = TextEditingController();
  var answer = 0;
  var fir;

  sum() {
    setState(() {
      fir = int.parse(first.text);
      int sec = int.parse(second.text);
      int sum = fir + sec;

      answer = sum;
    });
  }

  sub() {
    setState(() {
      fir = int.parse(first.text);
      int sec = int.parse(second.text);
      int sum = fir - sec;
      answer = sum;
    });
  }

  mul() {
    setState(() {
      fir = int.parse(first.text);
      int sec = int.parse(second.text);
      int sum = fir * sec;
      answer = sum;
    });
  }

  div() {
    setState(() {
      fir = int.parse(first.text);
      int sec = int.parse(second.text);
      var sum = fir / sec;
      answer = sum;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text("Calculator")),
        body: Column(
          children: [
            TextField(
              controller: first,
            ),
            TextField(
              controller: second,
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsetsDirectional.all(10),
                  child: ElevatedButton.icon(
                      onPressed: () {
                        sum();
                        first.clear();
                        second.clear();
                      },
                      icon: Icon(Icons.hdr_plus_rounded),
                      label: Text('Plus')),
                ),
                Container(
                  padding: EdgeInsetsDirectional.all(10),
                  child: ElevatedButton.icon(
                      onPressed: () {
                        sub();
                        first.clear();
                        second.clear();
                      },
                      icon: Icon(Icons.hdr_plus_rounded),
                      label: Text('Sub')),
                ),
                Container(
                  padding: EdgeInsetsDirectional.all(10),
                  child: ElevatedButton.icon(
                      onPressed: () {
                        mul();
                        first.clear();
                        second.clear();
                      },
                      icon: Icon(Icons.hdr_plus_rounded),
                      label: Text('Mul')),
                ),
                Container(
                  padding: EdgeInsetsDirectional.all(10),
                  child: ElevatedButton.icon(
                      onPressed: () {
                        div();
                        first.clear();
                        second.clear();
                      },
                      icon: Icon(Icons.hdr_plus_rounded),
                      label: Text('Div')),
                )
              ],
            ),
            Container(
              padding: EdgeInsetsDirectional.all(20),
              alignment: AlignmentDirectional.center,
              child: Text(
                'Answer $answer',
                style: TextStyle(fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
