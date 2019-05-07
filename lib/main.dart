import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
  int _counter = 0;
  final TextEditingController _textFieldController_1 = TextEditingController();
  final TextEditingController _textFieldController_2 = TextEditingController();
  final TextEditingController _textFieldController_3 = TextEditingController();
  String _value = "";

  void _incrementCounter() {
    setState(() {
      _counter++;
      _value = _textFieldController_1.text;
      _textFieldController_2.text = _value;
    });
  }

  void _escreveNoTerceiroField(){
    setState(() {
      if (_textFieldController_3.text.isEmpty) {
        _textFieldController_3.text = "Clicou no outro Botao";
        _value = "Alterou até esse campo";
      } else
        _textFieldController_3.text = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
      title: Text(widget.title),
      ),

      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display2,
            ),
            Text('$_value'),
            TextField(
              controller: _textFieldController_1,
            ),
            TextField(
            controller: _textFieldController_2,
            ),
            TextField(
              decoration: new InputDecoration(
                border:  new OutlineInputBorder(
                    borderSide: new BorderSide(color: Colors.teal)
                ),
              ),
              controller: _textFieldController_3,
            ),
            RaisedButton(
              onPressed: _escreveNoTerceiroField,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.

    );
  }
}
