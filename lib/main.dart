import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';
import 'dart:async';

import 'package:flutter_again/pages/home_page.dart';
import 'package:flutter_again/model/like_num_model.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final likeNumModel = LikeNumModel();

  @override
  Widget build(BuildContext context) {
    return Provider<int>.value(
      child: ChangeNotifierProvider.value(
        value: likeNumModel,
        child: MaterialApp(
          title: 'Flutter Title',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: Scaffold(
            appBar: AppBar(
              title: Text('i s n l'),
            ),
            body: Center(
              child: HomePage(),
            ),
          ),
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String _time;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  /// get 当前时间
  String getCurrentTime(String prefix) {
    DateTime now = DateTime.now();
    var formatter = DateFormat('yyyy-MM-dd hh:mm:ss');

    String nowStr = formatter.format(now);
    return '$prefix $nowStr';
  }

  void _setCurrentTime() {
    DateTime now = DateTime.now();
    var formatter = DateFormat('yyyy-MM-dd hh:mm:ss');
    setState(() {
      _time = '时间：${formatter.format(now)}';
    });
  }

  void refreshTimeStr() {
    const period = Duration(milliseconds: 1000);
    Timer.periodic(period, (timer) {
      setState(() {
        this._time = getCurrentTime('');
      });
    });
  }

  @override
  void initState() {
    this._time = getCurrentTime('');
    refreshTimeStr();
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 12, bottom: 12.0),
              child: Text(
                '当前时间',
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Text(
              '$_time',
              style: TextStyle(
                  color: Colors.red,
                  fontSize: 20,
                  decoration: TextDecoration.underline),
              textAlign: TextAlign.center,
            )
          ],
        ));
  }
}
