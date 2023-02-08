import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  int _item = 0;

  final Stream myStream = Stream.periodic(const Duration(seconds: 2), (int count) {
    return count;
  });
  late StreamSubscription _sub;
  final subject = BehaviorSubject<int>();

  @override
  void initState() {
    super.initState();
    print('Sub to stream');
    _sub = myStream.listen((event) {
      print('Stream: $event');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('rxdart'),
      ),
      body: Center(
          child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              _item++;
              subject.add(_item);
            },
            child: const Text('add item'),
          ),
          ElevatedButton(
              onPressed: () {
                subject.stream.listen(print);
              },
              child: const Text('Listen to stream')),
        ],
      )),
    );
  }
}
