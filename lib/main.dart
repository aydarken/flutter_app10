import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Form '),
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

  int _value =1;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Padding(
        padding: EdgeInsets.only(
          top: 10.0,
        ),
        child: Center(
          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget> [
                Icon(Icons.account_box_outlined),
                TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder (),
                      labelText: "Name"
                  ),
                ),
                Icon(Icons.phone),
                Padding(padding: EdgeInsets.only(
                  top: 10.0,
                ),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Phone number"),
                  ),
                ),
                Icon(Icons.mail),
                Padding(padding: EdgeInsets.only(
                  top: 10.0,
                ),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Email"),
                  ),
                ),
                Icon(Icons.flag),
                Padding(padding: EdgeInsets.only(
                  top: 10.0,
                ),
                  child: DropdownButton(
                    value: _value,
                    items: [
                      DropdownMenuItem(
                        child: Text("Country"),
                        value: 1,
                      ),
                      DropdownMenuItem(
                        child: Text("KAZAKHSTAN"),
                        value: 2,
                      ),
                      DropdownMenuItem(
                        child: Text("RUSSIA"),
                        value: 3,
                      ),
                      DropdownMenuItem(
                        child: Text("USA"),
                        value: 4,
                      ),
                    ],
                    onChanged: (value) {
                      setState(() {
                        _value = value;
                      });
                    },
                  ),
                ),
                Padding(padding: EdgeInsets.only(
                  top: 10.0,
                ),
                  child: TextFormField(
                    style: TextStyle(
                        fontSize: 25.0,
                        height: 2.0,
                        color: Colors.black
                    ),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Life story'
                    ),
                  ),
                ),
                Icon(Icons.security),
                Padding(padding: EdgeInsets.only(
                  top: 10.0,
                ),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "password"),
                  ),
                ),
                Icon(Icons.lock),
                Padding(padding: EdgeInsets.only(
                  top: 10.0,
                ),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "confirm password"),
                  ),
                ),

                Padding(padding: EdgeInsets.only( top: 10.0,
                ),
                  child: RaisedButton(
                    onPressed: (){},
                    child: Text("Submit form"),
                    color: Colors.lightGreen,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}